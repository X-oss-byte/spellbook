{{ config(
        schema = 'ovm_optimism'
        , alias = alias('l2_token_factory', legacy_model=True)
        , materialized = 'incremental'
        , file_format = 'delta'
        , incremental_strategy = 'merge'
        , unique_key = ['l1_token', 'l2_token']
        , post_hook='{{ expose_spells(\'["optimism"]\',
                                  "project",
                                  "ovm_optimism",
                                  \'["msilb7"]\') }}'
        ,depends_on=['tokens_optimism_erc20_legacy','tokens_erc20_legacy']
  )
}}

SELECT 
contract_address AS factory_address,
_l1Token AS l1_token,
_l2Token AS l2_token,
_symbol AS symbol,
_name AS name,
decimals,
call_tx_hash,
call_block_time,
call_block_number

FROM (
    
    SELECT c1.contract_address, c1._l1Token, tc._l2Token, _symbol, _name, 
    -- We would need contract function reads to get the actual decimal value - Approximate here, and overwrite in 'tokens_optimism_erc20_legacy' as necessary
        COALESCE(t.decimals,18) AS decimals, c1.call_tx_hash, c1.call_block_time, c1.call_block_number
        FROM {{source( 'ovm_optimism', 'L2StandardTokenFactory_call_createStandardL2Token' ) }} c1
            
        INNER JOIN {{source( 'ovm_optimism', 'L2StandardTokenFactory_evt_StandardL2TokenCreated' ) }} tc
            ON c1.call_block_number = tc.evt_block_number
            AND c1.call_tx_hash = tc.evt_tx_hash
            {% if is_incremental() %}
            AND tc.evt_block_time >= date_trunc("day", now() - interval '1 week')
            {% endif %}

        LEFT JOIN {{ref('tokens_ethereum_erc20_legacy')}} t
            ON t.contract_address = c1._l1Token

        WHERE call_success = true
            {% if is_incremental() %}
            AND c1.call_block_time >= date_trunc("day", now() - interval '1 week')
            {% endif %}

    UNION ALL
    
    SELECT c2.contract_address, c2._l1Token, _l2Token, _symbol, _name, 
        -- We would need contract function reads to get the actual decimal value - Approximate here, and overwrite in 'tokens_optimism_erc20_legacy' as necessary
        COALESCE(t.decimals,18) AS decimals, c2.call_tx_hash, c2.call_block_time, c2.call_block_number
        FROM {{source( 'ovm_optimism', 'OVM_L2StandardTokenFactory_call_createStandardL2Token' ) }} c2

        INNER JOIN {{source( 'ovm_optimism', 'OVM_L2StandardTokenFactory_evt_StandardL2TokenCreated' ) }} tc
            ON c2.call_block_number = tc.evt_block_number
            AND c2.call_tx_hash = tc.evt_tx_hash
            {% if is_incremental() %}
            AND tc.evt_block_time >= date_trunc("day", now() - interval '1 week')
            {% endif %}

        LEFT JOIN {{ref('tokens_ethereum_erc20_legacy')}} t
            ON t.contract_address = c2._l1Token

        WHERE call_success = true
            {% if is_incremental() %}
            AND c2.call_block_time >= date_trunc("day", now() - interval '1 week')
            {% endif %}
    ) a