/*
 Navicat Premium Data Transfer

 Source Server         : shop
 Source Server Type    : MySQL
 Source Server Version : 50022
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50022
 File Encoding         : 65001

 Date: 08/07/2019 09:33:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for collector
-- ----------------------------
DROP TABLE IF EXISTS `collector`;
CREATE TABLE `collector`  (
  `COLLECTORID` int(11) NOT NULL AUTO_INCREMENT,
  `COLLECTORTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `COLLECTORUSERID` int(11) NOT NULL DEFAULT '',
  `COLLECTORNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`COLLECTORID`),
  INDEX `COLLECTORUSERID` USING BTREE(`COLLECTORUSERID`),
  CONSTRAINT `collector_ibfk_1` FOREIGN KEY (`COLLECTORUSERID`) REFERENCES `goods` (`GOODSID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`COLLECTORUSERID`) REFER `shop/goods`(`GOODSID`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of collector
-- ----------------------------
INSERT INTO `collector` VALUES (1, '2019/7/3', 72, 'x5VMPktPdoRzSYH1sLR');
INSERT INTO `collector` VALUES (2, '2019/7/4', 2, 'L6yG8QM3u5uTImr0ZL');
INSERT INTO `collector` VALUES (3, '2019/7/4', 100, 'DvOMSVlOoIKx6WLt');
INSERT INTO `collector` VALUES (4, '2019/7/7', 63, 'XP5V65VzgUcOKKa');
INSERT INTO `collector` VALUES (5, '2019/7/7', 17, 'w7ptL7r1D js6');
INSERT INTO `collector` VALUES (6, '2019/7/7', 19, '1ZU3Iit cs');
INSERT INTO `collector` VALUES (7, '2019/7/3', 20, 'tY27Yfw3Kg');
INSERT INTO `collector` VALUES (8, '2019/7/2', 81, 'myPORHP CP7xyPv3L');
INSERT INTO `collector` VALUES (9, '2019/7/1', 80, 'zV ifBFMTNqMqmv');
INSERT INTO `collector` VALUES (10, '2019/7/3', 1, '6xRme499tuZnb6u5P');
INSERT INTO `collector` VALUES (11, '2019/7/7', 23, 'cqYrt5JKP6c');
INSERT INTO `collector` VALUES (12, '2019/7/5', 2, 'r229NlsWuLewBYSlJXZg');
INSERT INTO `collector` VALUES (13, '2019/7/7', 71, 'UXV9F0NmDlIwL');
INSERT INTO `collector` VALUES (14, '2019/7/3', 58, 'N6FNX0tEx8I61Dc3G');
INSERT INTO `collector` VALUES (15, '2019/7/1', 51, '3lLyNq9suCNfow9lM3w3');
INSERT INTO `collector` VALUES (16, '2019/7/7', 24, 'y2yVaAdBZ1f');
INSERT INTO `collector` VALUES (17, '2019/7/4', 87, 'iVUWbaXfU v20');
INSERT INTO `collector` VALUES (18, '2019/7/7', 19, '35CBWCLcmFIWitF9B');
INSERT INTO `collector` VALUES (19, '2019/7/4', 77, 'wia8mu7 6S');
INSERT INTO `collector` VALUES (20, '2019/7/2', 55, 'YcK MWDDM7nvP');
INSERT INTO `collector` VALUES (21, '2019/7/4', 75, 'nuoqID7gtCNPw6');
INSERT INTO `collector` VALUES (22, '2019/7/5', 15, 'zmBgvHODWSz0y8');
INSERT INTO `collector` VALUES (23, '2019/7/3', 64, 'xznAB YY3E');
INSERT INTO `collector` VALUES (24, '2019/7/2', 39, 'CiwG0pw3h7ay2Q');
INSERT INTO `collector` VALUES (25, '2019/7/5', 95, 'NDUXL1RkUB');
INSERT INTO `collector` VALUES (26, '2019/7/1', 39, 'pXlZErJoKnvprM');
INSERT INTO `collector` VALUES (27, '2019/7/1', 19, '715MwmRO6A9vY');
INSERT INTO `collector` VALUES (28, '2019/7/5', 25, 'cQWzDIGSQp27lBry0');
INSERT INTO `collector` VALUES (29, '2019/7/7', 69, '0oBWVww5AKeyz');
INSERT INTO `collector` VALUES (30, '2019/7/2', 37, '56iVaWFtdrgiZcOhD6R');
INSERT INTO `collector` VALUES (31, '2019/7/5', 92, 'LFETQOP8Hyp');
INSERT INTO `collector` VALUES (32, '2019/7/1', 67, '8YThyzWf8la5oxcZB');
INSERT INTO `collector` VALUES (33, '2019/7/6', 73, ' s2338PoMmeW');
INSERT INTO `collector` VALUES (34, '2019/7/4', 57, 'wK5oyPF 7 0');
INSERT INTO `collector` VALUES (35, '2019/7/2', 69, '0uzeotLTTQ');
INSERT INTO `collector` VALUES (36, '2019/7/2', 24, 'N04lhi59aM6h');
INSERT INTO `collector` VALUES (37, '2019/7/1', 50, 'ExcQiGTnXVYx9O8TKTTV');
INSERT INTO `collector` VALUES (38, '2019/7/2', 99, 'f0VrAO0wmmGP9pr');
INSERT INTO `collector` VALUES (39, '2019/7/2', 64, 'AVui8Wg0q4rZTbIUN');
INSERT INTO `collector` VALUES (40, '2019/7/1', 83, 'ohRFBzP1yk2OEwC');
INSERT INTO `collector` VALUES (41, '2019/7/1', 56, 'hmz6mdQA7gZoY');
INSERT INTO `collector` VALUES (42, '2019/7/5', 49, 'q5v eUjBKSQQF19EsCYr');
INSERT INTO `collector` VALUES (43, '2019/7/2', 9, '0RgzFly8RV5UR2P');
INSERT INTO `collector` VALUES (44, '2019/7/4', 88, 'ipaupqokPp0MlPU');
INSERT INTO `collector` VALUES (45, '2019/7/3', 100, 'eoa4N0uEem4');
INSERT INTO `collector` VALUES (46, '2019/7/6', 89, 'K6XqlGwYSHbuV');
INSERT INTO `collector` VALUES (47, '2019/7/7', 48, 'p2k  fZYmhh8kIltA');
INSERT INTO `collector` VALUES (48, '2019/7/5', 21, '755xbmdDp5SuJ');
INSERT INTO `collector` VALUES (49, '2019/7/5', 90, 'wGHbZgfOWO');
INSERT INTO `collector` VALUES (50, '2019/7/2', 43, 'N7kLElixHWlnEm');
INSERT INTO `collector` VALUES (51, '2019/7/4', 46, 'Smm rJJKMnh92bEg');
INSERT INTO `collector` VALUES (52, '2019/7/7', 2, 'mUl4m0Wcr114Wor7LPzW');
INSERT INTO `collector` VALUES (53, '2019/7/7', 18, 'dm9jehZtyP');
INSERT INTO `collector` VALUES (54, '2019/7/6', 10, 'UfrA8Fln7SRO22');
INSERT INTO `collector` VALUES (55, '2019/7/7', 70, 'erBX5vsLm04');
INSERT INTO `collector` VALUES (56, '2019/7/3', 11, '2tQMfXqGLzX2oodtn5');
INSERT INTO `collector` VALUES (57, '2019/7/6', 47, '8mofiaGBzEqRT4');
INSERT INTO `collector` VALUES (58, '2019/7/2', 36, 'QTCX0vcdWrDKh');
INSERT INTO `collector` VALUES (59, '2019/7/7', 8, 'mWTVeNynRriCdbvyI');
INSERT INTO `collector` VALUES (60, '2019/7/6', 88, 'n842t5rdvWUt');
INSERT INTO `collector` VALUES (61, '2019/7/1', 6, '5rNYvgv1iH0m6');
INSERT INTO `collector` VALUES (62, '2019/7/4', 92, 'WSFfBoyiFZjF');
INSERT INTO `collector` VALUES (63, '2019/7/3', 79, 'ASyJPBD8rt');
INSERT INTO `collector` VALUES (64, '2019/7/1', 15, ' UumrIgEL5CyEwq');
INSERT INTO `collector` VALUES (65, '2019/7/4', 14, 'dAfGmZP1TvgaAwI');
INSERT INTO `collector` VALUES (66, '2019/7/2', 58, 'L4Tr7cpIdN1IysE');
INSERT INTO `collector` VALUES (67, '2019/7/2', 32, '973b1SCk0a8j');
INSERT INTO `collector` VALUES (68, '2019/7/1', 15, '1uHKNauUlOYJ');
INSERT INTO `collector` VALUES (69, '2019/7/2', 22, 'Ovo3ezl2NRH  SiI5X');
INSERT INTO `collector` VALUES (70, '2019/7/3', 82, '9Rt odEkiak');
INSERT INTO `collector` VALUES (71, '2019/7/2', 80, ' bFiqIB8xVqMd');
INSERT INTO `collector` VALUES (72, '2019/7/5', 82, 'WYWHxPpU8EJRFWM');
INSERT INTO `collector` VALUES (73, '2019/7/7', 69, 'S7O JXzHqlKE04jE');
INSERT INTO `collector` VALUES (74, '2019/7/1', 39, 'w4V99PWYBKEvbgT28UmO');
INSERT INTO `collector` VALUES (75, '2019/7/1', 8, 'YKITpkwlP 7O');
INSERT INTO `collector` VALUES (76, '2019/7/2', 30, 'Ruy3mLQlzFn');
INSERT INTO `collector` VALUES (77, '2019/7/2', 52, 'ljYky07zUdfunPZW');
INSERT INTO `collector` VALUES (78, '2019/7/2', 33, 'PeUb57PacF3gL');
INSERT INTO `collector` VALUES (79, '2019/7/1', 90, 'Wce1xWMeuqBL2niEU');
INSERT INTO `collector` VALUES (80, '2019/7/1', 55, 'v3Gz1QdC s3uyaiuC');
INSERT INTO `collector` VALUES (81, '2019/7/1', 88, ' 6uNDFzlVyV');
INSERT INTO `collector` VALUES (82, '2019/7/3', 40, '2ntkEbMnZszXv');
INSERT INTO `collector` VALUES (83, '2019/7/3', 58, '8EhWEQVyuuaH5tUxvD');
INSERT INTO `collector` VALUES (84, '2019/7/6', 86, 'alIi3tyuyYSyN');
INSERT INTO `collector` VALUES (85, '2019/7/6', 81, '7rjS5frmcinZYqfidFM');
INSERT INTO `collector` VALUES (86, '2019/7/1', 57, 'fmnHur1moRe1td');
INSERT INTO `collector` VALUES (87, '2019/7/1', 26, '3oKyxCQhRzDbl');
INSERT INTO `collector` VALUES (88, '2019/7/3', 14, 'RKd30SftPvJcWnKgh4t');
INSERT INTO `collector` VALUES (89, '2019/7/2', 71, 'NFjnI55u6N5kB RUA');
INSERT INTO `collector` VALUES (90, '2019/7/2', 22, 'iu8QPNUyu0GRTpmR');
INSERT INTO `collector` VALUES (91, '2019/7/4', 5, 'qobkFSGXsmgxmM3');
INSERT INTO `collector` VALUES (92, '2019/7/1', 17, 'Zbu1b2lLe0EzH4ic');
INSERT INTO `collector` VALUES (93, '2019/7/4', 25, 'bthDBjvWkN');
INSERT INTO `collector` VALUES (94, '2019/7/7', 90, 'y1FT6DcKKDCZ');
INSERT INTO `collector` VALUES (95, '2019/7/2', 65, '22YVbdesB9uo0');
INSERT INTO `collector` VALUES (96, '2019/7/4', 55, 'a3jnH5mDCEdtc');
INSERT INTO `collector` VALUES (97, '2019/7/1', 38, 'y Om2rxrfBTL');
INSERT INTO `collector` VALUES (98, '2019/7/7', 17, 'kgTBX2nv f0HCRH');
INSERT INTO `collector` VALUES (99, '2019/7/4', 57, 'XBCEJr1IlWXKb');
INSERT INTO `collector` VALUES (100, '2019/7/6', 86, 'hT3UOubPll');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `GOODSID` int(11) NOT NULL AUTO_INCREMENT,
  `GOODSNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `BRANDNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `PRICE` double NOT NULL DEFAULT '',
  `GOODSNUMBER` double NOT NULL DEFAULT '',
  `GOODSPICTURE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`GOODSID`)
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'INj7x cWUH', 'CwTX3aYF9YFdZ1F0GlF', 620.2, 913, 'BVon{`vGiPt+');
INSERT INTO `goods` VALUES (2, 'o KuEsifFFEmV', 'm4wUhhTMOf', 340.73, 324, 'WOs?ECUi}H.%');
INSERT INTO `goods` VALUES (3, 'KUc 8ioL3WrjSnCDY', 'sIjFV0nLFwUy6h 6wPc', 842.8, 171, '!%/:rKF&*nzC~1e:#');
INSERT INTO `goods` VALUES (4, 'a6jntbyJ5uX', 'swJXE qFhgdQ1d', 291.13, 830, 'Xn*-gE[3h+i0F`d@V');
INSERT INTO `goods` VALUES (5, 'ql2Vg0pugXhd', '1WtDoauUoB', 467.36, 799, '{c@4Hm\\Ack');
INSERT INTO `goods` VALUES (6, 'L0XhoEZJlyDobSFNZjaH', 'kiVYClgDQ2j', 10.5, 341, '1+Z7[h3:a9J6');
INSERT INTO `goods` VALUES (7, '9lGIII57vF8LG', '8eilg7HIO5Okbvg', 312.85, 290, 'Jq)~cLbW%Sk*.X');
INSERT INTO `goods` VALUES (8, 'OUsgITAUtq yesxNiY', 'FOQl1dLGAc6H6Yld', 88.16, 121, '+4p*=cqo[mGJ');
INSERT INTO `goods` VALUES (9, 'sCmFeuWH2Ho', 'cLdvyv 03A', 474.54, 388, '?44!C#8+7AU!5jY(');
INSERT INTO `goods` VALUES (10, 'axAW8ZgH38BWnrBkrwTM', 'azmSrVJaElha', 132.09, 932, ')E-zB6LQ(<4y$Pl');
INSERT INTO `goods` VALUES (11, 'E UXZYg uwm', 'mfQ9OPhzpopi', 894.72, 119, '^TvrR*5uy?');
INSERT INTO `goods` VALUES (12, 'KVqiBbW7XvTrt', 'POk49OpPOXe5rUvqodT', 85.18, 264, 'PD/Y9O%UZs?g?-][C');
INSERT INTO `goods` VALUES (13, 'UtLdPLd627z7b9ABjaH', '84HKjStB29Re30ELM41', 879.11, 333, '%ExhN>2PLy$9MC+J5n');
INSERT INTO `goods` VALUES (14, 'k5JEdvKhExQiNjrXb', '73Gd OOLnAEj97VVpB0', 567.17, 870, '+^(XTIIR;xN+Z/');
INSERT INTO `goods` VALUES (15, 'UkZb4CUl k', '7HD4tgF w9dlxwb948', 455.14, 583, 'D]yK)B6Ih1I*t');
INSERT INTO `goods` VALUES (16, '1Tip9DVvWziTF', 'yOYL3mQYb6TRYQ', 333.86, 899, 'Tjt>v#D0+a6ZyPRM$');
INSERT INTO `goods` VALUES (17, 'PnZ6WUTV7g6r z0l51W', 'ZIudKDOcq3lNMlaxM', 63.19, 257, '!~\ZBDj5*QuR%;6h');
INSERT INTO `goods` VALUES (18, 'zXxUQI0hulbj', 'B szZvxuJG1MH', 871.95, 485, '<dFu~{U*`w>B');
INSERT INTO `goods` VALUES (19, 'qfDoXsUd1x08', 'V0EKBIgK595vSwHwAo', 528.01, 202, 'CPMG2=Gj#(HL^js');
INSERT INTO `goods` VALUES (20, 'CfxTV9mcOuFnN0IYbYzF', 'sDaIh0leH  1kfwWsn', 416.46, 937, '>>+YW!l56a?%YsQ +f%');
INSERT INTO `goods` VALUES (21, 'dDg97 kK0IA', '4cy8pn807mB9j8w2', 7.65, 495, 'yittNdNlUOv&}Uh');
INSERT INTO `goods` VALUES (22, 'GTE2qbvY2xr58hHgvB4', 'ob99GiNTUwgwtcf', 141.83, 856, '~#]E/+H/VR (z8.W(');
INSERT INTO `goods` VALUES (23, 'nAGPZpRVypqKz5JYeB', 'dUY230Sn51WclVMowT', 997.59, 204, 'A/`AnN@N]A');
INSERT INTO `goods` VALUES (24, '6QuGTWubR7', 'MvqPUcvTEZlDvSfyvYE', 659.29, 572, '3G7D(4i+AzP=6]4');
INSERT INTO `goods` VALUES (25, '2PgSdwLElU13W0', 'xpWb4zz0DQMSkEAIG', 709.52, 653, 'It=RR[I(eM<6bP>kvd~');
INSERT INTO `goods` VALUES (26, 'Yr1O1C9gXUkV', 'cuDYBp jfm9SNhBsw7vG', 936.95, 648, '*D-H>H>FdtQ');
INSERT INTO `goods` VALUES (27, 'aEfZlec6mKO', 'X78PTll7QkXGs19', 749.77, 56, 'Yr]Zaq<5h MlY).)e^}');
INSERT INTO `goods` VALUES (28, 'XwIRGUuMmpHRgXgp', 'bxiAQALarjkRCvi', 265.1, 527, '8&ls+aLQqaCt<7J_*t');
INSERT INTO `goods` VALUES (29, 'gx7xBYi6b4KcEjmgCd', 'b7ILXM1KiN9vyyrjDKBs', 263.18, 359, '^IfP9;+gH+=4Q');
INSERT INTO `goods` VALUES (30, 'qYyKLupwJIlmppf', '5gQqbkNCBz', 301.6, 818, '&SB1/ai2Em7c ?');
INSERT INTO `goods` VALUES (31, 'n2g2Picxr6P3QF4d', 'o3bMBiozVRIBS1umA5Vz', 179.36, 564, '9rc1Z~lB]%U^i%3IW:');
INSERT INTO `goods` VALUES (32, 'yVoSMCsmFcmjWtUO', 'tXuafttIz3DRXZsx', 578.63, 197, 'Dbm4XZnEZ;{[');
INSERT INTO `goods` VALUES (33, 'ZtKNcNToCsfp', 'R5iD5SLLjvJ', 247.66, 142, '`r)&e&DhZ<Y');
INSERT INTO `goods` VALUES (34, 'ljxI9qso7vOdVAp', 'hUpK znmZsY8Bs', 356.13, 680, 'zxY0:I}DRE;W!f3nH');
INSERT INTO `goods` VALUES (35, 'w4mFGhFEiYZhQ', 'Dv4ag1CmwYWbN', 692.15, 921, '.Wh[FQs8dC.U:MFGu');
INSERT INTO `goods` VALUES (36, '27PdAWltB6Fs', 'jmTmhHLHIiH1mv8', 141.09, 140, 'nc#u5=O`.q~cu');
INSERT INTO `goods` VALUES (37, 'nnaTunrHERT5U', 'HPhwnk5rs2', 743.4, 887, 'o7ify_FoeQ(je1/.');
INSERT INTO `goods` VALUES (38, 'rxSQGpM GPU', '5RzEe9I7wzpid', 565.83, 955, 'OuH15`T&L:^]):Jp.Rvy');
INSERT INTO `goods` VALUES (39, 'GIUQ vc tSg', 'EIbpzMWocWT2neo9zs30', 709.46, 669, '5(IQr[N&]K9z?V`');
INSERT INTO `goods` VALUES (40, '2Gm Dg8w6TIMjF0UEHrz', 'imIejTw8zNEsxO', 803.81, 121, 'sA](l:G@{C5uky?');
INSERT INTO `goods` VALUES (41, 'VktwNlDqMIBH1Gx0LO', '6aMB5NunGnY1lSJ', 197.22, 875, 'DfCf+og)J');
INSERT INTO `goods` VALUES (42, 'o9kGEO3ErKT8CJzxk', 'aWO2TMiGYQbopm3JljlQ', 205.79, 623, '~[}+}@s6w 8(QMu]{Wz');
INSERT INTO `goods` VALUES (43, 'yCsI00FCHHyD', 'xnUe6GNwO Q km8r', 797.06, 834, '(%Wjq^7P;YY:hT?ZArQO');
INSERT INTO `goods` VALUES (44, 'UIkDtcgtnVQbsGcfYBd', 'Ehiwa5Y651', 670.35, 75, '} [!iwsjF!');
INSERT INTO `goods` VALUES (45, 'XZjBNfZfvMR', 'xNQYaphUwDm8mhZO', 180, 625, 'B;m3N^-V6<O');
INSERT INTO `goods` VALUES (46, 'BqJxYQMnqFg0', 'BlJPdrmDoXT', 911.2, 605, 'IUhbK`9<oFF@Ml5');
INSERT INTO `goods` VALUES (47, 'pwSTls8mxgPAEtCo', 'GV1tnsfG30j20', 357.11, 334, ' H=kRXy/<}H3:H');
INSERT INTO `goods` VALUES (48, 'RyOEKtuFCh1o', '2AWOdhEn1Ws49sZ2YHa3', 919.39, 311, '{/[6t4^^IZQhC]sC6jm');
INSERT INTO `goods` VALUES (49, 'Cw4ZTncotQ', '62R45IpBQHLkJZhrx6E', 967.34, 45, '(Xa-E3_Q9I%S;Yq~:[8');
INSERT INTO `goods` VALUES (50, 'nUJpvKQaWzxJwrr', 'ZKKxpCpkZHitDS47kc7', 664.49, 235, 'PlZ*(M%9Zf. OCLTDUO');
INSERT INTO `goods` VALUES (51, 'arJ8i6zkotuCXBS2yuKg', 'JVkJD8rg89', 730.17, 595, 'PR-sZGgX2)*VW%sr<IM8');
INSERT INTO `goods` VALUES (52, 'wYs 1 mYwgrwjkh', 'z9ifPBmZCEac5e', 741.48, 210, 'I.h``q1_F~#\ng(:;f{6');
INSERT INTO `goods` VALUES (53, 'DrpGryYKb0NDJ', 'zCvUZAwB9LA2MtTAOuMZ', 408.47, 938, 'Vql]mw;7!L!UY2XfKNU');
INSERT INTO `goods` VALUES (54, 'CrTyJYf6M8y42V', 'apGQ0eBU84ys2', 348.42, 834, '9l6=C}Rdq3wz');
INSERT INTO `goods` VALUES (55, 'wgisRqKvLF', 'lxfq3BKkv5azXQtnDWY', 222.16, 127, 'MYV yA>kIo4WL/R%3Oc4');
INSERT INTO `goods` VALUES (56, 'w0D4yvWJcYMxabR', 'Fx4uEbjGdHQCQ reA ', 338.33, 885, '~CY{~i/^e]RotQxa~/');
INSERT INTO `goods` VALUES (57, 'hzRpHkp2xqvw', 'sHfpTE3Z9YS', 694.29, 502, 'E9~+9IfND (');
INSERT INTO `goods` VALUES (58, '0aw8BIQpa2', 'NWgKhBLgrXeowvRdBI', 240.25, 544, 'NUFtS:xJ6FBJ$');
INSERT INTO `goods` VALUES (59, 'XiB0pqFmO3N2RdrbH', 'v5H6EVppH 8M6', 609, 262, 'Rh}F/T6!OG6v9');
INSERT INTO `goods` VALUES (60, 'nVe5X8mYLMLDCOGqbw4', 'TuzRWAnek2irfb1AFF3', 717.42, 0, 'u> >t3Lg.Y`awI');
INSERT INTO `goods` VALUES (61, 'krZ7GjhBEhMheeRiD5x', 'PC720MndTqhmm', 432.46, 584, '__kY:77c.D_fMU`Z4mFi');
INSERT INTO `goods` VALUES (62, 'cqvP6l4Ku2', '7q3vA7shsnWHn1aV', 757.95, 294, 'Qu~~tIo5:Ny8Q:+xHX');
INSERT INTO `goods` VALUES (63, 'zcI92sFNRqQrtf', 'EwTEo8EDAVzJK08W4u1s', 579.29, 331, '(rxOn*HZ0HA%');
INSERT INTO `goods` VALUES (64, 'XzqW rqREWcSxHU3w', 'WV7cCkc5U3Yih2RE9omJ', 853.25, 338, 'A)Vz7I}$q9NMKX?');
INSERT INTO `goods` VALUES (65, 'ypZbVXA7lkk8yBspT87', 'Ws42HkD A2V', 504.86, 574, '7>rTb8:IFnd]:9kxZ');
INSERT INTO `goods` VALUES (66, '4wpdIUW6m2Ywp', 'CK5KRuShs87cAyfB', 69.56, 875, 'r ~}sV`#[Wt7yZTZj@');
INSERT INTO `goods` VALUES (67, 'Byx9GwynumFI0e7ar3X', 'MZ9cVDPHfiI', 58.91, 206, 'KAt pHfT^*LpVU');
INSERT INTO `goods` VALUES (68, 'W6SreF0sW5pNC8r7', 'r1oLI8vk2oA', 256.69, 331, 'wyPy\rYWgmPnc@');
INSERT INTO `goods` VALUES (69, 'odJ8W5KGWFqr85nDb', 'rOqLDipfuiWuiKDszNy1', 154.22, 365, '8+{j*y_s?%CMqY');
INSERT INTO `goods` VALUES (70, 'Y1FySEeazrLcqwA', 'xQxv7zxBdsUgVRa2', 329.24, 985, '&qpf6(+DMwQs');
INSERT INTO `goods` VALUES (71, 'AtqnRk79XWAQHYWD0', 'RwG9wVg3JfCiE7hxlH', 170.19, 931, 'NS[N*9^Ugave:0ea');
INSERT INTO `goods` VALUES (72, 'U56GAc1rZTowmdDenzy', 'Vb8h3gl3ei7Svu', 455.37, 466, 't[_1Gp#:q}');
INSERT INTO `goods` VALUES (73, 'h3cfMozR3mc', 'EIgfrtxSSYi5s5ClsNn', 489.37, 341, '/>Ir7l+c4t</uxWI$x');
INSERT INTO `goods` VALUES (74, 'GaKG75Pn4Ygv6', 'IXZ40UNM0JKbn79F', 698.71, 664, ')I4^E/ w=4w*');
INSERT INTO `goods` VALUES (75, 'CgPKYEcV80', '6fbWZWJNlUkOpz', 446.69, 676, '%v+zCM#@Zjq)1KtR8;hu');
INSERT INTO `goods` VALUES (76, 'N12tiCkpIkQsU', 'PaGGnoKkOJnfNCc', 765.33, 418, '.)=i&]*diI/m');
INSERT INTO `goods` VALUES (77, 'NPYl2V3wLEf', '7SdGew7hi4ulQjnaMsoF', 468.72, 948, '0x0XM~kQ[8(');
INSERT INTO `goods` VALUES (78, '6E4o6qXYkriRahYR', 'jckCtKkQzNciI', 274.44, 833, '+.i Mq=Ze-mlv}G<fE1*');
INSERT INTO `goods` VALUES (79, 'vxY5AR I B', '2V5isD4zZDG1', 163, 359, 'h-pL_OuK^aej');
INSERT INTO `goods` VALUES (80, 'UBAwa2yP VTZkh7PlB', 'nRIHpK8b4Up3Ycis', 376.32, 922, '4l>Gn>_^qk4');
INSERT INTO `goods` VALUES (81, 'IoqALHcby5G2IH26YR', '8R7DPoc7rygN', 329.22, 847, 'jkPI^<w#&xC$-B');
INSERT INTO `goods` VALUES (82, 'noukEMMub9GozpN2SGN', 'CrJ0gVcy4m5mli', 792.85, 799, 'BDTI%jWKIiSDilE]I+');
INSERT INTO `goods` VALUES (83, 'ANzi1dgxVoqnD5', 'KRI28gaQKSqK', 462.03, 765, 'l6vZ]j9$_f3h8e>W*');
INSERT INTO `goods` VALUES (84, 'DAYIRUBCYiZ', 'u3mOjoWgp3KkClDGwcg', 646.71, 678, '{9b~3hW3^5Qa3;V');
INSERT INTO `goods` VALUES (85, 'SUlPzKqt2V', 'B 1m UvF3A9CVlR6', 201.15, 351, '7uxkgfPSl*(CC2X>');
INSERT INTO `goods` VALUES (86, 'jP6ySp9eobl4   SA', 'WjWR65NEXiL', 3.29, 193, ')<Zl.LmY`}eMo(');
INSERT INTO `goods` VALUES (87, 'JbzSwkawUH', 'uq7BrAe3ClxpkfoNURh', 623.27, 492, 'c*)V<*cew');
INSERT INTO `goods` VALUES (88, 'TMkUPIno3UC2bYsoCZzO', 'nlcgIsJtt43aUCieW3Yo', 816.97, 101, 'EH^h?fY]p.M7e0O');
INSERT INTO `goods` VALUES (89, 'zvkwmULtTd', 'PDuLlAtuSZ', 412.63, 368, '95QN?4WDbaD=!S61L-I');
INSERT INTO `goods` VALUES (90, 'HSQK 38cohK 6aANQL4', 'nk0Y8ucZ6nXBAfXN8', 602.79, 215, 'l1]ycEVOnJ.+Xa(');
INSERT INTO `goods` VALUES (91, 'bQzKPAckanO', 'U3AIiDkisSZY2aOL0Rgd', 172.61, 74, 'L4Wq6~22eN[qPFvLX');
INSERT INTO `goods` VALUES (92, 'A3AtbiQpsHtO', 'n8Ys1NIDSFvsn7Yd9BIN', 504.13, 893, 'kI 95V)_XZRj;');
INSERT INTO `goods` VALUES (93, 'JXUhQkOOmAYunhGpayJE', 'kQll2naEAbGrzzsP', 423.97, 884, '#+}7M[%9&+e3^774');
INSERT INTO `goods` VALUES (94, 'lwA m6zMoKS5dOaot', 'FJWm9TvHMgU', 498.16, 360, '6eos`h!5h;}OYcZeGW');
INSERT INTO `goods` VALUES (95, '0J nQN6ayCrGshaCfX', 'BG7MhcS8YVKo', 729.11, 528, 'Z)C:8<B@bZAE-*#!xEI');
INSERT INTO `goods` VALUES (96, 'lrJZqs7tV4kK1H', 'zZQCF2nucv9Pr', 828.73, 499, '-?`H=&S@.B<');
INSERT INTO `goods` VALUES (97, 'PIBdCYRbpOXnMe', 'qBmntGvJlkZPh', 890, 517, '^x)M-Cbu=0}JG@tN[');
INSERT INTO `goods` VALUES (98, 'CXnJCc30U5', 'HO5jXUX2LPql ', 803.57, 655, 'F6-#>h.5(B#Aq');
INSERT INTO `goods` VALUES (99, 'JAOTezhAd6kgjWShAKc', 'jZlh4Rkqugx8zJ', 799.65, 0, 'sW&O J#_#nZ</{?~Rf');
INSERT INTO `goods` VALUES (100, 'nrJATYC23Ege6h7KZj', 'bv6g L9PeB', 771.78, 292, 'r?A/B4y%RXs etZ{}');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `ITEMID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERDETAILSGOODSID` int(11) NOT NULL DEFAULT '',
  `ORDERDETAILSGOODSNUMBER` double NOT NULL DEFAULT '',
  `ORDERDETAILSORDERID` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`ITEMID`),
  INDEX `ORDERDETAILSGOODSID` USING BTREE(`ORDERDETAILSGOODSID`),
  INDEX `ORDERDETAILSORDERID` USING BTREE(`ORDERDETAILSORDERID`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ORDERDETAILSORDERID`) REFERENCES `orders` (`ORDERID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`ORDERDETAILSGOODSID`) REFERENCES `goods` (`GOODSID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`ORDERDETAILSORDERID`) REFER `shop/orders`(`ORDERID`); (`' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `ORDERID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ORDERUSERID` int(11) NOT NULL DEFAULT '',
  `ORDERSTATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ORDERADDRESS` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `SOMETHING` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`ORDERID`),
  INDEX `ORDERUSERID` USING BTREE(`ORDERUSERID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ORDERUSERID`) REFERENCES `users` (`USERID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`ORDERUSERID`) REFER `shop/users`(`USERID`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOODSID` int(11) NOT NULL DEFAULT '',
  `NUMBER` int(11) NOT NULL DEFAULT '',
  `SHOPGOODSID` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`ID`),
  INDEX `GOODSID` USING BTREE(`GOODSID`),
  INDEX `SHOPGOODSID` USING BTREE(`SHOPGOODSID`),
  CONSTRAINT `shopcar_ibfk_2` FOREIGN KEY (`SHOPGOODSID`) REFERENCES `users` (`USERID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopcar_ibfk_1` FOREIGN KEY (`GOODSID`) REFERENCES `goods` (`GOODSID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`SHOPGOODSID`) REFER `shop/users`(`USERID`); (`GOODSID`) ' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `NICKNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `PICTURE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `SEX` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `AGE` int(11) NOT NULL DEFAULT '',
  `TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`USERID`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
