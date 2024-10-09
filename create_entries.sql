USE cryptocoach;

CREATE TABLE IF NOT EXISTS Crypto (
            id INTEGER PRIMARY KEY AUTO_INCREMENT,
            coin_name TEXT,
            January REAL,
            February REAL,
            March REAL,
            April REAL,
            May REAL,
            June REAL,
            July REAL,
            August REAL,
            September REAL,
            October REAL,
            November REAL,
            December REAL
        );

INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Bitcoin', 1220.64, 3725.47, 3642.85, 3150.86, 
                    3046.6, 4815.25, 4889.22, 133.37, 
                    3764.13, 2615.15, 4920.25, 4473.9);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Ethereum', 126.55, 1022.79, 2355.75, 1456.52, 
                    3236.92, 4074.74, 3493.26, 2524.4, 
                    2973.05, 3262.51, 2094.94, 2403.01);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Ripple', 1609.11, 4073.51, 1109.69, 350.95, 
                    4216.99, 185.64, 3236.34, 4060.46, 
                    785.53, 3255.32, 712.42, 1757.46);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Litecoin', 2036.46, 434.87, 3703.71, 195.41, 
                    2304.13, 4479.0, 2021.52, 2017.91, 
                    3363.08, 3331.2, 4848.89, 4331.54);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Cardano', 3800.21, 3680.24, 2781.78, 4502.6, 
                    4143.38, 4302.67, 3819.95, 3444.55, 
                    2527.8, 3495.88, 2459.5, 1342.65);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Polkadot', 4727.68, 3913.04, 3183.36, 983.75, 
                    944.61, 3194.47, 4074.56, 3995.61, 
                    614.19, 3438.92, 4859.87, 3823.32);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Chainlink', 1701.3, 3656.29, 2588.64, 2623.98, 
                    1399.78, 1468.44, 4907.01, 1879.95, 
                    774.18, 2383.94, 1056.45, 1870.67);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Stellar', 1587.77, 407.95, 4312.32, 399.41, 
                    256.76, 3928.97, 1921.93, 2411.15, 
                    2273.16, 3563.2, 1254.96, 4431.59);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Dogecoin', 3920.05, 2563.02, 4360.65, 494.59, 
                    1311.21, 1037.61, 4142.64, 3110.54, 
                    4081.26, 1826.83, 3761.52, 4526.68);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Binance Coin', 4092.12, 3548.44, 1598.91, 4658.33, 
                    2367.88, 1164.23, 3840.52, 4653.9, 
                    1309.62, 3489.59, 851.56, 2613.99);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Tether', 4012.32, 190.35, 2888.55, 2133.65, 
                    151.71, 539.45, 312.06, 4711.4, 
                    3285.04, 4582.01, 1740.56, 3871.77);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Solana', 2580.34, 4958.58, 2668.62, 1374.51, 
                    2408.84, 4983.78, 670.18, 1706.18, 
                    729.97, 1188.59, 3258.62, 3934.11);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('TRON', 4661.47, 4209.82, 1930.78, 3997.96, 
                    4024.73, 3653.0, 836.34, 3262.58, 
                    4209.19, 1799.5, 1079.52, 2512.65);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('VeChain', 2279.92, 4012.01, 4667.66, 4472.02, 
                    576.63, 3431.3, 1393.69, 3085.91, 
                    1382.1, 2487.56, 4240.99, 844.53);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Monero', 4850.39, 1980.47, 4713.42, 1242.36, 
                    718.81, 1506.89, 2711.26, 2445.79, 
                    780.37, 448.66, 4723.77, 1696.3);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('EOS', 3808.26, 533.07, 4326.68, 3141.6, 
                    3611.3, 1658.12, 2397.13, 625.36, 
                    914.85, 3711.69, 3505.83, 4389.81);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Aave', 3280.39, 461.1, 1623.35, 4182.62, 
                    4358.75, 2616.31, 3819.31, 267.46, 
                    1827.87, 2864.51, 4831.44, 3724.6);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Bigcoin', 2184.46, 997.98, 3333.1, 1926.88, 
                    260.13, 4639.13, 1968.7, 4465.51, 
                    3894.4, 1785.25, 552.49, 787.26);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('IOTA', 3707.71, 253.91, 1316.82, 4063.17, 
                    1060.9, 3715.94, 4822.24, 2178.23, 
                    190.74, 2709.38, 2544.79, 2532.88);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Tezos', 3670.52, 4577.66, 2713.92, 543.81, 
                    4038.78, 2915.32, 1157.22, 4242.97, 
                    472.43, 4829.86, 812.46, 3240.29);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Cosmos', 2734.96, 357.25, 311.94, 297.74, 
                    1397.45, 1627.39, 1629.75, 2123.3, 
                    2193.16, 4840.15, 2389.5, 4404.14);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Zilliqa', 1799.86, 4207.02, 4094.01, 813.5, 
                    847.0, 3759.61, 4829.04, 897.42, 
                    1716.99, 1472.88, 3701.99, 186.01);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Ethereum Classic', 3189.93, 3732.61, 1369.85, 4850.08, 
                    3191.22, 604.21, 2327.75, 2974.96, 
                    4447.69, 3404.32, 2209.46, 690.5);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Filecoin', 275.95, 4601.74, 1530.91, 2607.39, 
                    4474.32, 131.53, 1754.17, 1056.24, 
                    2780.95, 3715.14, 3863.16, 1815.31);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Fantom', 3614.86, 2477.28, 2196.91, 2720.36, 
                    2381.82, 832.99, 4463.66, 572.26, 
                    2378.95, 2071.3, 2312.09, 373.82);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Avalanche', 4859.24, 1604.52, 1930.01, 661.12, 
                    2692.43, 410.27, 442.05, 2593.59, 
                    426.11, 3754.71, 951.13, 557.55);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Algorand', 4911.57, 1556.85, 2584.09, 4182.3, 
                    1647.27, 3888.02, 3363.85, 1010.81, 
                    4172.85, 1004.29, 1246.3, 2882.1);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Terra', 4863.56, 4236.89, 1257.14, 4095.41, 
                    4796.73, 567.57, 3488.88, 3340.0, 
                    2898.03, 1791.83, 2449.22, 4653.54);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('BitTorrent', 3529.51, 3634.31, 887.49, 891.13, 
                    3955.71, 576.3, 1778.1, 904.28, 
                    2679.59, 4579.3, 3446.82, 2413.45);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Quant', 2645.49, 3895.34, 1828.56, 4827.69, 
                    3592.95, 2203.92, 598.41, 4584.22, 
                    1855.77, 1738.78, 357.76, 1324.16);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Kusama', 1000.34, 571.91, 2561.91, 519.94, 
                    494.24, 1485.94, 3774.91, 2684.74, 
                    2795.92, 635.43, 4101.08, 4489.71);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Hedera', 1081.38, 2464.67, 1747.97, 1994.85, 
                    105.74, 4026.23, 3318.99, 2699.18, 
                    2184.86, 433.07, 4640.05, 2272.25);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Maker', 3466.99, 326.46, 1611.95, 2598.69, 
                    3460.36, 2108.23, 923.46, 4085.69, 
                    900.2, 332.73, 2208.36, 989.38);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Dash', 4230.2, 2604.78, 140.99, 1458.07, 
                    1240.86, 2647.16, 1205.65, 3039.52, 
                    2067.49, 1987.05, 489.32, 2155.25);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Zcash', 1858.12, 2551.27, 182.2, 4150.48, 
                    2916.03, 498.73, 725.64, 3611.14, 
                    1719.34, 306.67, 2650.42, 3280.56);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Enjin Coin', 1804.99, 4450.9, 170.13, 4380.96, 
                    2775.64, 4005.39, 1673.36, 2926.92, 
                    3753.69, 4463.77, 321.18, 4292.72);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Chiliz', 1934.23, 306.92, 181.05, 524.49, 
                    2641.28, 4407.19, 1034.15, 2039.44, 
                    583.2, 3208.33, 4153.68, 1141.81);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Decentraland', 1769.64, 2222.05, 1173.53, 762.74, 
                    626.37, 3699.4, 1400.34, 2361.02, 
                    2481.23, 2378.68, 1447.28, 1501.98);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Theta Network', 388.22, 1058.29, 4392.78, 2562.05, 
                    946.33, 2819.32, 1808.98, 3550.79, 
                    4935.99, 2136.29, 4054.09, 1362.4);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Flow', 2282.22, 4236.14, 4883.06, 1607.19, 
                    1598.82, 3861.5, 3545.67, 2056.06, 
                    2425.32, 4800.73, 3789.43, 4368.63);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('PancakeSwap', 3749.09, 4983.09, 3459.28, 320.29, 
                    1858.82, 2058.56, 1416.79, 1532.58, 
                    2267.78, 1987.52, 552.43, 4257.88);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('SushiSwap', 4040.02, 4026.64, 2052.05, 596.59, 
                    379.52, 4437.12, 3898.39, 3204.98, 
                    4749.82, 4429.92, 2686.2, 369.5);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Yearn Finance', 4892.39, 4968.39, 4490.76, 1158.86, 
                    2976.88, 4622.45, 1486.17, 2770.05, 
                    445.97, 3329.51, 2152.25, 4043.39);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('1inch', 106.5, 3303.59, 2686.12, 4642.29, 
                    1095.43, 2648.56, 746.26, 4000.62, 
                    3309.02, 4814.38, 2439.53, 2873.59);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Kava', 1516.89, 1171.2, 210.13, 2430.31, 
                    1714.38, 368.78, 147.96, 4793.41, 
                    3383.29, 3693.89, 1662.46, 3304.7);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('NEM', 1076.65, 2402.41, 1472.35, 593.96, 
                    4260.41, 4664.82, 3620.56, 3669.63, 
                    804.26, 3890.05, 2386.59, 674.27);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Waves', 4285.22, 2135.12, 2431.28, 1327.5, 
                    914.61, 2537.92, 2468.81, 1553.3, 
                    2077.63, 4328.08, 1107.76, 4421.3);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Rizzliqa', 2983.09, 3251.32, 2236.76, 2998.4, 
                    1648.3, 2122.48, 1267.73, 1975.73, 
                    1277.42, 974.66, 251.46, 2033.58);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('The Graph', 2399.32, 1031.09, 1313.57, 1341.93, 
                    3244.5, 3137.86, 3126.34, 459.7, 
                    4098.2, 4517.35, 2399.66, 1303.12);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Holo', 4242.69, 119.15, 3544.1, 2588.79, 
                    4507.94, 3253.28, 1897.79, 1982.42, 
                    3528.5, 746.4, 4107.7, 539.59);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Ravencoin', 4225.02, 1015.19, 619.16, 2693.62, 
                    1461.47, 484.59, 4275.43, 799.48, 
                    2706.05, 4455.23, 1353.86, 4791.89);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Horizon', 479.87, 303.94, 2168.88, 2457.57, 
                    4703.8, 2892.76, 1895.7, 3528.04, 
                    2600.05, 1306.72, 275.67, 2237.57);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Paxos Standard', 4281.97, 1448.9, 205.21, 953.54, 
                    2974.05, 145.55, 1836.78, 566.94, 
                    1097.01, 1882.27, 3531.8, 4860.98);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Crypto.com Coin', 2731.49, 4470.3, 1130.76, 1375.79, 
                    1147.84, 2377.69, 3733.83, 855.6, 
                    1457.42, 570.14, 2731.95, 2931.46);
INSERT INTO Crypto (coin_name, January, February, March, April, May, June, July, August, September, October, November, December)
            VALUES ('Loopring', 4260.3, 1642.8, 785.52, 3392.9, 
                    3535.04, 4338.76, 3943.14, 4431.21, 
                    3782.78, 4670.97, 4307.22, 3195.55);
