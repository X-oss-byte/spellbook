{{config(alias='addresses',
        tags=['static'],
        post_hook='{{ expose_spells(\'["bitcoin"]\',
                                    "sector",
                                    "cex",
                                    \'["hildobby"]\') }}')}}

SELECT blockchain, address, cex_name, distinct_name, added_by, added_date
FROM (VALUES
    -- Coinbase, source: https://github.com/jacobgreen4477/btc_img_realtime_prediction/blob/2966dc59630b15f70e3cdb90366c67afb9a6a3db/data/btc_known_addr_list.csv
    ('bitcoin', '1FzWLkAahHooV3kzTgyx6qsswXJ6sCXkSR', 'Coinbase', 'Coinbase 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3Kzh9qAqVWQhEsfQz7zEQL1EuSx5tyNLNS', 'Coinbase', 'Coinbase 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1Cb1G5qFK91fShyaPPZWVFwYFBtqRG7h8D', 'Coinbase', 'Coinbase 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1LyTftu54VMYCv5pq3S4pMzPRMnsYKTESw', 'Coinbase', 'Coinbase 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3FupZp77ySr7jwoLYEJ9mwzJpvoNBXsBnE', 'Coinbase', 'Coinbase 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1DSh7vX6ed2cgTeKPwufV5i4hSi4pp373h', 'Coinbase', 'Coinbase 6', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3LtpFPpQhE4pc9MbaDsVqZNat2GeFUKCix', 'Coinbase', 'Coinbase 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3FFgKaYkEf1M73QtzuY9DGqC7VeM2sAQhT', 'Coinbase', 'Coinbase 8', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q3kgpr9ym5c3hu8wpgwaz6vudsp5wup8vfc6pk0', 'Coinbase', 'Coinbase 9', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qss5ejcqfrmjm9lfydshanhjkc7wnlhk4khlsj8', 'Coinbase', 'Coinbase 10', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3N7BbBNKnE1uNpvSSfXaXfYbbP3KeYGZwF', 'Coinbase', 'Coinbase 11', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '145tSHbcj1s3CJVMFrGLQZmPyjYQVKWcch', 'Coinbase', 'Coinbase 12', 'hildobby', timestamp '2023-04-06')
    -- Coinbase, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/cold_wallets_fill.sql
    , ('bitcoin', '1CAhFPhKkTLWLinCcXNDHNjPDwikwatktx', 'Coinbase', 'Coinbase 13', 'hildobby', timestamp '2023-04-06')
    -- Binance, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/binance_address.txt
    , ('bitcoin', '', 'Coinbase', 'Coinbase 12', 'hildobby', timestamp '2023-04-06')
    -- Binance, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/binance_address.txt
    , ('bitcoin', '34xp4vRoCGJym3xR7yCVPFHoCNxv4Twseo', 'Binance', 'Binance 1', 'ilemi', timestamp '2023-03-28')
    , ('bitcoin', '38ztxG7GL1LEEbC9gKpqEKEh7WZ3KDTLMi', 'Binance', 'Binance 2', 'ilemi', timestamp '2023-03-28')
    , ('bitcoin', '399QCnqVzAt4HGU1SV7PfVPYovb1BX3u9Y', 'Binance', 'Binance 3', 'ilemi', timestamp '2023-03-28')
    , ('bitcoin', '3HdGoUTbcztBnS7UzY4vSPYhwr424CiWAA', 'Binance', 'Binance 4', 'ilemi', timestamp '2023-03-28')
    , ('bitcoin', '3LYJfcfHPXYJreMsASk2jkn69LWEYKzexb', 'Binance', 'Binance 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3M219KR5vEneNb47ewrPfWyb5jQ2DjxRP6', 'Binance', 'Binance 6', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3JJmF63ifcamPLiAmLgG96RA599yNtY3EQ', 'Binance', 'Binance 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qm34lsc65zpw79lxes69zkqmk6ee3ewf0j77s3h', 'Binance', 'Binance 8', 'hildobby', timestamp '2023-04-06')
    -- Binance, source: https://github.com/jacobgreen4477/btc_img_realtime_prediction/blob/2966dc59630b15f70e3cdb90366c67afb9a6a3db/data/btc_known_addr_list.csv
    , ('bitcoin', '37tRFZw7n94Jddq6TfVs3MbCXmDX6eMfeY', 'Binance', 'Binance 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3JurbUwpsAPqvUkwLM5CtwnEWrNnUKJNoD', 'Binance', 'Binance 8', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '386eAUqL3ZNZPmHeABXLo658DTQuJeLzUR', 'Binance', 'Binance 9', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3FGKwP7XQA9Gb27if7zQGJSSynbzWLrV3p', 'Binance', 'Binance 10', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3HxedGVPz8cM5ja6HWJgjaUxhAfa9J4LCP', 'Binance', 'Binance 11', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1NDyJtNTjmwk5xPNhjgAMu4HDHigtobu1s', 'Binance', 'Binance 12', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '0x3f5ce5fbfe3e9af3971dd833d26ba9b5c936f0be', 'Binance', 'Binance 13', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qqxf98drymkq5awwtt685l6463tmtumlrvqfxv2', 'Binance', 'Binance 14', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1F3Cpgben5uRAMptnPRL9coAbKp9YmWqfb', 'Binance', 'Binance 15', 'hildobby', timestamp '2023-04-06')
    -- Binance, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/coldwallet.csv
    , ('bitcoin', 'bc1ql42rmpvvq488tkqxvg8wmaa7j3jsrkxgnm8cy6', 'Binance', 'Binance 16', 'hildobby', timestamp '2023-04-06')
    -- Bitfinex, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/bitfinex_address.txt
    , ('bitcoin', '1Kr6QSydW9bFQG1mXiPNNu6WpJGmUa9i1g', 'Bitfinex', 'Bitfinex 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3JZq4atUahhuA9rLhXLMhhTo133J9rF97j', 'Bitfinex', 'Bitfinex 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qgdjqv0av3q56jvd82tkdjpy7gdp9ut8tlqmgrpmv24sq90ecnvqqjwvw97', 'Bitfinex', 'Bitfinex 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3Jnt8EYSLc2FfV7YUGzvU8m35jE1B2iTTC', 'Bitfinex', 'Bitfinex 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3BX7VWCwQ4p3WGXdeFzZszbmnFGxKoVJTo', 'Bitfinex', 'Bitfinex 5', 'hildobby', timestamp '2023-04-06')
    -- Bitget, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/bitget/index.js
    , ('bitcoin', '1FWQiwK27EnGXb6BiBMRLJvunJQZZPMcGd', 'Bitget', 'Bitget 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1GDn5X4R5vjdSvFPrq1MJubXFkMHVcFJZv', 'Bitget', 'Bitget 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3GbdoiTnQrJYatcr2nhq7MYASSCWEKmN6L', 'Bitget', 'Bitget 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3HcSp9sR23w6MxeRrLqqyDzLqThtSMaypQ', 'Bitget', 'Bitget 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3MdofQ2ouxom9MzC9kKazGUShoL5R3cVLG', 'Bitget', 'Bitget 5', 'hildobby', timestamp '2023-04-06')
    -- Bitstamp, source: https://github.com/jacobgreen4477/btc_img_realtime_prediction/blob/2966dc59630b15f70e3cdb90366c67afb9a6a3db/data/btc_known_addr_list.csv
    , ('bitcoin', '35pgGeez3ou6ofrpjt8T7bvC9t6RrUK4p6', 'Bitstamp', 'Bitstamp 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1LFg7FKFDa1bHDM5xVguUetpw42huik2ME', 'Bitstamp', 'Bitstamp 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '38gfemn6Ps54si7KeYZrPX3uLpiseuP7sX', 'Bitstamp', 'Bitstamp 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3JaZdj2aQjCaG63bhL29cpm5ySxEthdhWX', 'Bitstamp', 'Bitstamp 4', 'hildobby', timestamp '2023-04-06')
    -- Bittrex, source: https://github.com/jacobgreen4477/btc_img_realtime_prediction/blob/2966dc59630b15f70e3cdb90366c67afb9a6a3db/data/btc_known_addr_list.csv
    , ('bitcoin', '385cR5DM96n1HvBDMzLHPYcw89fZAXULJP', 'Bittrex', 'Bittrex 1', 'hildobby', timestamp '2023-04-06')
    -- Bybit, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/bybit_address.txt
    , ('bitcoin', 'bc1q2qqqt87kh33s0er58akh7v9cwjgd83z5smh9rp', 'Bybit', 'Bybit 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q9w4g79ndel72lygvwtqzem67z6uqv4yncvqjz3yn8my9swnwflxsutg4cx', 'Bybit', 'Bybit 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qjysjfd9t9aspttpjqzv68k0ydpe7pvyd5vlyn37868473lell5tqkz456m', 'Bybit', 'Bybit 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1grwdkr33gt6luumniyjkegjtlhsl5kmqc', 'Bybit', 'Bybit 4', 'hildobby', timestamp '2023-04-06')
    -- Crypto.com, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/crypto-com_address.txt
    , ('bitcoin', 'bc1qpy4jwethqenp4r7hqls660wy8287vw0my32lmy', 'Crypto.com', 'Crypto.com 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3lhhdlbvwbzchnqv8dn4ndkfcnycg1fq', 'Crypto.com', 'Crypto.com 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3qsqsaxq4rqrnvh5pew55hf3f9peyb7rvq', 'Crypto.com', 'Crypto.com 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qr4dl5wa7kl8yu792dceg9z5knl2gkn220lk7a9', 'Crypto.com', 'Crypto.com 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q4c8n5t00jmj8temxdgcc3t32nkg2wjwz24lywv', 'Crypto.com', 'Crypto.com 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '14m3sd9hccfjw4lymahjckmabaxtk4daqw', 'Crypto.com', 'Crypto.com ', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qjqy709gqpse60hdsm2d2v0dzzu7yp5dej7fdrpl2x3taccvujq4s0vzsyd', 'Crypto.com', 'Crypto.com 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qcdqj2smprre85c78d942wx5tauw5n7uw92r7wr', 'Crypto.com', 'Crypto.com 8', 'hildobby', timestamp '2023-04-06')
    -- Derebit, Source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/deribit_address.txt
    , ('bitcoin', 'bc1qa3phj5uhnuauk6r62cku6r6fl9rawqx4n6d690', 'Derebit', 'Derebit 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qtq5zfllw9fs9w6stnfgalf9v59fgrcxxyawuvm', 'Derebit', 'Derebit 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1mdq7zylw6okichbfi_ddz3aak59byc6ct', 'Derebit', 'Derebit 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1932ekraq3ad9menbh14wfqbnrlakeept', 'Derebit', 'Derebit 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '13jj1nxdex5fmsdeyghilok8rf2aygq1cx', 'Derebit', 'Derebit 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1mdrcezfi_jdvs6evswux6bwbo_px8if5u3', 'Derebit', 'Derebit ', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '35whp4hid61pey_h4tuhnunw_rj2gtnb41lo', 'Derebit', 'Derebit 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '34zhv8_dd6uuceuabydwpki6f4qkqnt_euf', 'Derebit', 'Derebit 8', 'hildobby', timestamp '2023-04-06')
    -- Firi, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/fire/index.js
    , ('bitcoin', 'bc1q36c0rp4ydl6uvvguhw9nr7njm49addzkgftqev', 'Firi', 'Firi 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q3z0khuld6nd7esv46nxj9ketteqw9qz86peyeh', 'Firi', 'Firi 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q4hz59t7v0uxujuyrhp9679uppur7ke9u3vshvd', 'Firi', 'Firi 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qdlrh7ycyqxe62vk5m70y353vmep9ullxx5j9ar', 'Firi', 'Firi 4', 'hildobby', timestamp '2023-04-06')
    -- Gate.io, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/gate-io_address.txt
    , ('bitcoin', '14kmvhqrwrnehbrskbysj4qhgjemdts3sf', 'Gate.io', 'Gate.io 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '162bzzt2hjfv5gm3zmwf_wf_hj_jctmd6rhw', 'Gate.io', 'Gate.io 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1ekkgxr7dtbzbrkfkoe6yep4gj4gzme_kvw', 'Gate.io', 'Gate.io 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1g47msr3oanxmafvr8uc4pzv7fea_zo3r9', 'Gate.io', 'Gate.io 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1hp_ed69tpksaea_wp_y3udt1dtcvcucuoh2y', 'Gate.io', 'Gate.io 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3hrodxv8hmzk_rtasf_bffrgedkpru8fgy6m', 'Gate.io', 'Gate.io ', 'hildobby', timestamp '2023-04-06')
    -- Huobi, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/gate-io_address.txt
    , ('bitcoin', '12qtdzhx6f77aq74cpczgsy47varwyjvd8', 'Huobi', 'Huobi 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '143glvwyuojxawzrxqu_rkp_vntkhmr415b', 'Huobi', 'Huobi 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1kvpu_cfhftkzj67z_uega_muayey7qni7ppj', 'Huobi', 'Huobi 3', 'hildobby', timestamp '2023-04-06')
    -- Huobi, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/coldwallet.csv
    , ('bitcoin', '16AhJPQwo5NgpcHbyQA2f7BqWVjePN6nAq', 'Huobi', 'Huobi 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1Au6T3MTYMFYgXXfqQrjGKPd27R75Aztfu', 'Huobi', 'Huobi 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1BKN5obhkdoequshHnn96zZvFi3wCEdfiC', 'Huobi', 'Huobi 6', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1EgRfQtiDKy74mFxJBFxpKiahkvh9FrnRh', 'Huobi', 'Huobi 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1BZGtMiwxncH6pSziuxxW6FpcZPRV3CYnK', 'Huobi', 'Huobi 8', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1AwkRd2E8DmYtBHWRhrqnReC3eyVhhHRGF', 'Huobi', 'Huobi 9', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '13sAgarPMUPuNkJdRCNr8FiqZrP7RiYwNA', 'Huobi', 'Huobi 10', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1L1xSXttdsBAPVjVfyoyCg3RZbdHinT5G5', 'Huobi', 'Huobi 11', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1ArUgVX6xZxDgPxnHig5sAxdhoybv3y3Lc', 'Huobi', 'Huobi 12', 'hildobby', timestamp '2023-04-06')
    -- Huobi, source: https://github.com/jacobgreen4477/btc_img_realtime_prediction/blob/2966dc59630b15f70e3cdb90366c67afb9a6a3db/data/btc_known_addr_list.csv
    , ('bitcoin', '35hK24tcLEWcgNA4JxpvbkNkoAcDGqQPsP', 'Huobi', 'Huobi 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3D8qAoMkZ8F1b42btt2Mn5TyN7sWfa434A', 'Huobi', 'Huobi 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '36KAwNUR8VeLpUfGwdk7LEN6F4yvoRWMjn', 'Huobi', 'Huobi ', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1BejpJzSYnydbvbpar1qwrjjMLuQY1c5DF', 'Huobi', 'Huobi 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1CJc8WmP45GrjpWmPgM1TEPd1x7QcR3sfX', 'Huobi', 'Huobi 8', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '16Cn9u31P3NEi76MS7BExn24XEdabcotmT', 'Huobi', 'Huobi 9', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '13HJR2TgK5pbKs6trNCKKZXYjM852x9jis', 'Huobi', 'Huobi 10', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1EYUwpHcScA26hmUua7PLXxDFxh44a11Ug', 'Huobi', 'Huobi 11', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1BLo4QYNub1SSJ2K6VHr2vF6NwcxUmV7aM', 'Huobi', 'Huobi 12', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1KzSMLhbJ2jKXCcZjDVvBHvzPWSUMhqhnZ', 'Huobi', 'Huobi 13', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '16cCbDwh2fzowTUEXumYtaac49uXBZL6b8', 'Huobi', 'Huobi 14', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '12wQC4h7pZa4PRuPQfXaHTQ7Vms8Ngkrwd', 'Huobi', 'Huobi 15', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1EDj9Wu8uQkEQEfjGDjuvLviG7F9UUG48o', 'Huobi', 'Huobi 16', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1FVWsRJHwutN2quvvqunPbcR7GovNFnv9K', 'Huobi', 'Huobi 17', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '16JPU7uZzwpn9DjWUSY5fnXSq8M3offyru', 'Huobi', 'Huobi 18', 'hildobby', timestamp '2023-04-06')
    -- Korbit, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/korbit/index.js
    , ('bitcoin', '1JtAupan5MSPXxSsWFiwA79bY9LD2Ga1je', 'Korbit', 'Korbit 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3E8BTrBB7jxAemyUqSnN4YFLMC22cShZJZ', 'Korbit', 'Korbit 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3GoBetHTvfnaRNQbR4yy5YNUjX4d8mTQKK', 'Korbit', 'Korbit 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q09j44e0xxxusj3zsan20x7tuvtumxfv9smlq27t0nwp57gxf7htqq6m9lj', 'Korbit', 'Korbit 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q0uffd8egas4w87dxq998ttfl6j3jtw6k7cafce9v4mvr5qc9tvfq9czqk9', 'Korbit', 'Korbit 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q33m8td986p3vcnap9zqpx3d8v8zujtkvqacsya5xfvf945vmvxzqth4h4t', 'Korbit', 'Korbit ', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q3yn06lfl8ayjukya52ksff0uaveurfc8lm3ftdgu8ywvwanx8lqswj7w9u', 'Korbit', 'Korbit 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q4sv2fxlp6w08wkq8ywmughxkm7n75d2fmrgnmvwun6rhepyknjxqm99v4x', 'Korbit', 'Korbit 8', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q7fww9657ts2au45wh0ed39rjze6ja93z0498z4j89pqjky266wzs0sz8ka', 'Korbit', 'Korbit 9', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q9pnwfyd4jtkulyk4w057wsdjhykaw6fftw06k2cn2m3y7jlsfe2qvxvm8e', 'Korbit', 'Korbit 10', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qa8may4g0yzezjyesqcq0mwggy5wwzl0yhs0a8tk9ucej5qg6ujfqscv2jq', 'Korbit', 'Korbit 11', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qgkx4ee8ac3as5y4ddhw6uedyk9adsywdzgc0fzxv304lcrh4qs9sn96agt', 'Korbit', 'Korbit 12', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qku6z53kuyaj9r898kj6esqnwz7wke82mwgw43vhu33ld7sx3200s2u9p9x', 'Korbit', 'Korbit 13', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1ql0p3klhr2d8z07ja3t5d5dnxrenhp4gcjeszxpfflr08zaqqx5zqpkeqnl', 'Korbit', 'Korbit 14', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qnerwvz93pcj653r5yd4hnd2d7np2drhdhyruj7qdvl3psc5wnf0q6x9me4', 'Korbit', 'Korbit 15', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qs9ut74nue7vjknz2eqxegmtuzqhjzx9y8tzjymvlg05v8a5ffr5qz402cx', 'Korbit', 'Korbit 16', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qsk6h7d2l7e7r2a8krlxjn6wdnhhszyrtzcugdsfa5zz4syajzl5spd52h5', 'Korbit', 'Korbit 17', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qsmqvkwrsy5xw2hm885l5fv7s2hxzauz5fn9jayfmd86305wehrts2lztgs', 'Korbit', 'Korbit 18', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qtlen0nuvln3aqcn2r3nljshdmzakq7z5z4rexpk23mj8u8lmc8ysc29jct', 'Korbit', 'Korbit 19', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qzdt5z4f46jak59jku5jmvv3f2ru20htqs7jhy0whazgd5v4626eq4vkxqz', 'Korbit', 'Korbit 20', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qzu4lnzfpskwsvnyvzud9a7ru4d2ft7whqvl5d3kskxxhgeupnjjquzvt97', 'Korbit', 'Korbit 21', 'hildobby', timestamp '2023-04-06')
    -- KuCoin, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/kucoin_address.txt
    , ('bitcoin', '38fJPq4dYGPoJizEUGCL9yWkqg73cJmC2n', 'KuCoin', 'KuCoin 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q080rkmk3kj86pxvf5nkxecdrw6nrx3zzy9xl7q', 'KuCoin', 'KuCoin 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1q8yja3gw33ngd8aunmfr4hj820adc9nlsv0syvz', 'KuCoin', 'KuCoin 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qgrxsrmrhsapvh9addyx6sh8j4rw0sn9xtur9uq', 'KuCoin', 'KuCoin 4', 'hildobby', timestamp '2023-04-06')
    -- Swissborg, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/swissborg/index.js
    , ('bitcoin', '18DowXoMUQT5EU8zPTDTrq4hrwmi8ddCcc', 'Swissborg', 'Swissborg 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qfu6su3qz4tn0et634mv7p090a0cgameq6rdvuc', 'Swissborg', 'Swissborg 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qutkfwnuq4v0zdkenqt5vyuxlrmsezldzue5znc', 'Swissborg', 'Swissborg 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1Mgs8zLJ7JyngcNRUscayyPHnnYJpJS5x2', 'Swissborg', 'Swissborg 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qc8ee9860cdnkyej0ag5hf49pcx7uvz89lkwpr9', 'Swissborg', 'Swissborg 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1JgXCkk3gjmgfgjT2vvnjpvqfvNNTFCRpM', 'Swissborg', 'Swissborg ', 'hildobby', timestamp '2023-04-06')
    -- OKX, source: https://raw.githubusercontent.com/js-kingdata/indicators_factory/fefe53bca88ecf331a71fc59e34aab319f3415c5/crawlers/address_tags/cex/okx_address.txt
    , ('bitcoin', '13jTtHxBPFwZkaCdm6BwJMMJkqvTpBZccw', 'OKX', 'OKX 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '13rCGm4Z3PDeYwo5a7GTT4jFYnRFBZbKr1', 'OKX', 'OKX 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '14kHu26yWkVD8qAnBfcFXHXxgquNoSpKum', 'OKX', 'OKX 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '15Exz1BAVan4Eweagy1rcPJnfyc6KJ4GvL', 'OKX', 'OKX 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '162z6mSSHzfTqb2Sn3NUk5r1Y2oGoCMCoM', 'OKX', 'OKX 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '16rF2zwSJ9goQ9fZfYoti5LsUqqegb5RnA', 'OKX', 'OKX ', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '178E8tYZ5WJ6PpADdpmmZd67Se7uPhJCLX', 'OKX', 'OKX 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '18QUDxjDZAqAJorr4jkSEWHUDGLBF9uRCc', 'OKX', 'OKX 8', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1AumBaQDRaCC3cKKQVRHeyvoSPWNdDzsKP', 'OKX', 'OKX 9', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1BsdDaJtgFZrLfzEXvh6cD4VhtHHSHhMea', 'OKX', 'OKX 10', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1CE8chGD6Nu8qjcDF2uR1wMKyoWb8Kyxwz', 'OKX', 'OKX 11', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1CY7fykRLWXeSbKB885Kr4KjQxmDdvW923', 'OKX', 'OKX 12', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1DVTB9YKi4KNjyEbAHPp17T8R1Pp17nSmA', 'OKX', 'OKX 13', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1DcT5Wij5tfb3oVViF8mA8p4WrG98ahZPT', 'OKX', 'OKX 14', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1DnHx95d2t5URq2SYvVk6kxGryvTEbTnTs', 'OKX', 'OKX 15', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1FTgXfXZRxMQcKSNeuFvWYVPsNgurTJ7BZ', 'OKX', 'OKX 16', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1FY6RL8Ju9b6CGsHTK68yYEcnzUasufyCe', 'OKX', 'OKX 17', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1FfgXrQUjX5nQ4zsiLBWjvFwW61jQHCqn', 'OKX', 'OKX 18', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1JQULE6yHr9UaitLr4wahTwJN7DaMX7W1Z', 'OKX', 'OKX 19', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1Lj2mCPJYbbC2X6oYwV6sXnE8CZ4heK5UD', 'OKX', 'OKX 20', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1LnoZawVFFQihU8d8ntxLMpYheZUfyeVAK', 'OKX', 'OKX 21', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1M6E6vPaYsuCb34mDNS2aepu2aJyL6xBG4', 'OKX', 'OKX 22', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '1MbNM3jwxMjRzeA9xyHbMyePN68MY4Jxb', 'OKX', 'OKX 23', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1quhruqrghgcca950rvhtrg7cpd7u8k6svpzgzmrjy8xyukacl5lkq0r8l2d', 'OKX', 'OKX 24', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qphk6rkypc8q64xesgy67l8n5780f2kuh286x9j5a5vje4p6mtgtqkzd2s8', 'OKX', 'OKX 25', 'hildobby', timestamp '2023-04-06')
    -- OKX, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/coldwallet.csv
    , ('bitcoin', '38UmuUqPCrFmQo4khkomQwZ4VbY2nZMJ67', 'OKX', 'OKX 1', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3HSMPBUuAPQf6CU5B3qa6fALrrZXswHaF1', 'OKX', 'OKX 2', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3DVJfEsDTPkGDvqPCLC41X85L1B1DQWDyh', 'OKX', 'OKX 3', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3ETUmNhL2JuCFFVNSpk8Bqx2eorxyP9FVh', 'OKX', 'OKX 4', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3DwVjwVeJa9Z5Pu15WHNfKcDxY5tFUGfdx', 'OKX', 'OKX 5', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '36NkTqCAApfRJBKicQaqrdKs29g6hyE4LS', 'OKX', 'OKX 6', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1quq29mutxkgxmjfdr7ayj3zd9ad0ld5mrhh89l2', 'OKX', 'OKX 7', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3ANziRvoBdNGkmGopgyhvzPuBvcL8sRL7S', 'OKX', 'OKX 8', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3FQ1j5SRRTBihpw97A5mWcaE8jn9u9YGoc', 'OKX', 'OKX 9', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3JmxvMqm35aLDUHXDbESy6rQz4M8MBQD32', 'OKX', 'OKX 10', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', '3BT3JFq8MGHK4YzsXfFWmEZ3bupJ1Cmgp8', 'OKX', 'OKX 11', 'hildobby', timestamp '2023-04-06')
    , ('bitcoin', 'bc1qsrnf7ad2t2x0hvf9qxtjufftshx5jjqqdaame8', 'OKX', 'OKX 12', 'hildobby', timestamp '2023-04-06')
    -- Phemex, source: https://phemex.com/proof-of-reserves
    , ('bitcoin', '3PiGxVdpMjWSsH8X8BypdwcsmPW5cmE4Ta', 'Phemex', 'Phemex 1', 'hildobby', timestamp '2023-04-06')
    -- Cake DeFi, source: https://cakedefi.com/transparency
    , ('bitcoin', '38pZuWUti3vSQuvuFYs8Lwbyje8cmaGhrT', 'Cake DeFi', 'Cake DeFi 1', 'hildobby', timestamp '2023-04-06')
    -- WOO Network, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/woo-cex/index.js
    , ('bitcoin', 'bc1qh78w4qq9v2dqntjtxne97kp9u2485jdqrfsghh', 'WOO Network', 'WOO Network 1', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qm4hycszv0v0qel3swxqyp57nkpnnrda4rc55lm', 'WOO Network', 'WOO Network 2', 'hildobby', timestamp '2023-04-07')
    -- Coinsquare, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/coinsquare/index.js
    , ('bitcoin', '1P7cDFGeWm6ezez6XGXTAjvm8qcsGiMXe7', 'Coinsquare', 'Coinsquare ', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1q0k5rpdwf7wnq3fuk7dfjqd59p3ke7ufqmlkfp4', 'Coinsquare', 'Coinsquare 1', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qdstretw2uvhjen7hvgaya3nsjgr430x9jhqf4a', 'Coinsquare', 'Coinsquare 2', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qez6ezccleuac4dnj5cpexz5mz3j0j3j655j6qn', 'Coinsquare', 'Coinsquare 3', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qg6a9kpmge0fdwtrymjvq3cydfzgpcge7e05e7z', 'Coinsquare', 'Coinsquare 4', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qg8fywv20ztsp0edtf53zpsnxeu5cqxrmdwmtjd', 'Coinsquare', 'Coinsquare 5', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qm5mqpgtt2ufucfdvhu5xcdgs3vzehwu62wsyqy', 'Coinsquare', 'Coinsquare ', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qmkkejzrq7ayfjpy7w8gmkhd3uwcy7nryr5apch', 'Coinsquare', 'Coinsquare 7', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qsjc50kf72r4q44ac28v3vrukaxjg4w30rh0cmm', 'Coinsquare', 'Coinsquare 8', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qyz9mssutu8xxcgjvsucz38qvxt7hxwtnm5eh8k', 'Coinsquare', 'Coinsquare 9', 'hildobby', timestamp '2023-04-07')
    -- CoinDCX, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/coindcx/index.js
    , ('bitcoin', '12T8i8tpeczk5JGf8ppZf1w6SFBRwEa9y4', 'CoinDCX', 'CoinDCX 1', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '12hGEyxk4zMLquxiMiFrkvYSohsXz2D3uZ', 'CoinDCX', 'CoinDCX 2', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1477uXZ1NfUaaZZdnztQ7h8ftGRpuWQPfA', 'CoinDCX', 'CoinDCX 3', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '17mxRZ9WeXigSwg3Cm62HxeATnuUphMxGL', 'CoinDCX', 'CoinDCX 4', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1CJ7XmM3C72i5qDgEJAkzWq5VDJ51gbdLR', 'CoinDCX', 'CoinDCX 5', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1F6CrpEnHEZh6gQtJ7cf1MtK7Y8GYKoP4i', 'CoinDCX', 'CoinDCX ', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1HLkxeuEDCFMbKGCzXR1uAdMJgjJcpNs2H', 'CoinDCX', 'CoinDCX 7', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1JV3umtGC6H6tFUVoFyV5KwbJDscUwrtX7', 'CoinDCX', 'CoinDCX 8', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1KXxS6QnzpB8mSLm5kmXJXqvZF7wVvQDCw', 'CoinDCX', 'CoinDCX 9', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1MzSJodjNmACPKyj9VUv9X55Pby87osLhc', 'CoinDCX', 'CoinDCX 10', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '1PRwacjHVksLNTkSYNkiWkRgTm1yDSgLMG', 'CoinDCX', 'CoinDCX 11', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1q7c9ylgjsyc0yaxwm84jjh6avfajzfe7dhk6e0e', 'CoinDCX', 'CoinDCX 12', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qedxsgzuj8ga644gwlqw4nw7f3xncq4g2rskmzu', 'CoinDCX', 'CoinDCX 13', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qffg4ya27430vv5ymg2lhf4mj7tvtc3ur5qyyq3', 'CoinDCX', 'CoinDCX 14', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qhlyrdhfqry06nj902p9dxdftm4pxkhdqeum8y8', 'CoinDCX', 'CoinDCX 15', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qucl4n347qc6e48w85xdxcv86sm3an8fr250hhm', 'CoinDCX', 'CoinDCX 16', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qygg2x02cfy0e6r7798v4qrcjjkzm8tl5t0xkwf', 'CoinDCX', 'CoinDCX 17', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qz22hegkllltcydg3pz3an6h352mjmyp7n2vhd9', 'CoinDCX', 'CoinDCX 18', 'hildobby', timestamp '2023-04-07')
    -- Hotbit, Source: https://etherscan.io/accounts/label/hotbit
    , ('bitcoin', '1MiFZMJkFMhMrubjjo6f5oEhh7XgSwXWgp', 'Hotbit', 'Hotbit 1', 'hildobby', timestamp '2022-08-28')
    -- NBX, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/nbx/index.js
    , ('bitcoin', 'bc1qd79ypayqr03lmvcqc40udn6yuq4mve34ychy6a', 'NBX', 'NBX 1', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qgxrcuzn62qjk3e3echysa9srg87la26x0qn2sa', 'NBX', 'NBX 2', 'hildobby', timestamp '2023-04-07')
    -- BitVenus, source: https://github.com/DefiLlama/DefiLlama-Adapters/blob/main/projects/bitvenus/index.js
    , ('bitcoin', '3FdoFGYYcD1EU7ekrt2x2u2mFrjmxouMJG', 'BitVenus', 'BitVenus 1', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '358pjjkYRG8exw2BKZnn7Q9s6SCb7wZEWN', 'BitVenus', 'BitVenus 2', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '3C1ykoWkHBMZwmY8PUUMVxtJJSBkZBCtN8', 'BitVenus', 'BitVenus 3', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', 'bc1qrm2a7u9xyeffvulm6e589qvesmt0v0rjxqfkhv', 'BitVenus', 'BitVenus 4', 'hildobby', timestamp '2023-04-07')
    -- Kraken, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/coldwallet.csv
    , ('bitcoin', '3KTQYXvjteNoMECi62JYuqXobYQpcHjoVs', 'Kraken', 'Kraken 1', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '36WJXbAqeNEiKqPZ4xKoG3KBXafrhabuWp', 'Kraken', 'Kraken 2', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '37fvTdvVcidi6p6We5BDs8Zr257K2N8227', 'Kraken', 'Kraken 3', 'hildobby', timestamp '2023-04-07')
    , ('bitcoin', '35G8yS3fJjPTNZdcQCP6TdtUFPG7nD2SfG', 'Kraken', 'Kraken 4', 'hildobby', timestamp '2023-04-07')
    -- P2Pool, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/coldwallet.csv
    , ('bitcoin', '1J1F3U7gHrCjsEsRimDJ3oYBiV24wA8FuV', 'P2Pool', 'P2Pool 1', 'hildobby', timestamp '2023-04-07')
    -- CoinCheck, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/coldwallet.csv
    , ('bitcoin', '3LCGsSmfr24demGvriN4e3ft8wEcDuHFqh', 'CoinCheck', 'CoinCheck 1', 'hildobby', timestamp '2023-04-07')
    -- Poloniex, source: https://github.com/tieugene/bcerq/blob/46274090d5fc3ed187bb92db430be5713b3ac5a8/sql/q1a/cold_wallets_fill.sql
    , ('bitcoin', '3H5JTt42K7RmZtromfTSefcMEFMMe18pMD', 'Poloniex', 'Poloniex 1', 'hildobby', timestamp '2023-04-07')
    ) AS x (blockchain, address, cex_name, distinct_name, added_by, added_date)
