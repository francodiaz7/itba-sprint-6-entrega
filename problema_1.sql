-- ITEM UNO

-- Crea tabla tipo_cliente
CREATE TABLE tipo_cliente(
    tipo_cliente_id INTEGER PRIMARY KEY, 
    tipos_de_clientes TEXT NOT NULL
);
INSERT INTO tipo_cliente(tipos_de_clientes) 
VALUES('CLASSIC'),('GOLD'),('BLACK');

-- Crea tabla marcas_de_tarjetas
CREATE TABLE marcas_de_tarjetas(
    marcas_tarjeta_id INTEGER PRIMARY KEY, 
    marca_tarjeta TEXT NOT NULL
);
INSERT INTO marcas_de_tarjetas(marca_tarjeta) 
VALUES('MasterCard'),('Visa'),('American Express');

-- Crea tabla tipos_de_cuentas
CREATE TABLE tipos_de_cuentas(
	tipos_de_cuentas_id INTEGER PRIMARY KEY, 
	tipo_de_cuenta TEXT NOT NULL
);
INSERT INTO tipos_de_cuentas(tipo_de_cuenta) 
VALUES('Caja de Ahorro en Pesos'),('Caja de Ahorro en Dolares'),('Cuenta Corriente en Pesos'),('Cuenta Corriente en Dolares'),('Cuenta Inversion');

-- ITEM DOS
CREATE TABLE tarjeta(
	numero INTEGER UNIQUE PRIMARY KEY NOT NULL CHECK(length(numero)<=20) ,
	CVV INTEGER NOT NULL CHECK(length(CVV)<=3),
	fecha_de_otorgamiento INTEGER NOT NULL CHECK(length(fecha_de_otorgamiento)=4),
	fecha_de_vencimiento INTEGER NOT NULL CHECK(length(fecha_de_vencimiento)=4),
	tipo_tarjeta TEXT NOT NULL CHECK(tipo_tarjeta="credito" OR tipo_tarjeta="debito")
);

-- ITEM TRES
ALTER TABLE tarjeta
ADD marca_tarjeta_id;

ALTER TABLE tarjeta
ADD FOREIGN KEY (marca_tarjeta_id) REFERENCES marcas_de_tarjetas(marcas_tarjeta_id);

-- ITEM CUATRO
ALTER TABLE tipo_cliente
ADD marca_tarjeta_id;

ALTER TABLE tarjeta
ADD FOREIGN KEY (marca_tarjeta_id) REFERENCES marcas_de_tarjetas(marcas_tarjeta_id);

-- ITEM CINCO
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5333 3763 6879 2521","914",2189,4576,"Débito",1),
  ("5277 9338 7533 2866","479",2367,5609,"Débito",1),
  ("5449 8551 4583 6454","536",7880,5183,"Débito",2),
  ("3778 859256 51772","894",3825,5168,"Crédito",2),
  ("5249 9879 2593 2252","555",3068,9348,"Crédito",3),
  ("3722 264576 28992","861",9778,3767,"Débito",3),
  ("4532 7442 7317 6586","729",6327,1078,"Débito",1),
  ("3428 696578 37280","421",8504,5831,"Débito",1),
  ("4485 7753 6348 7118","420",5497,5642,"Débito",2),
  ("5533 3646 9234 3482","760",7841,5507,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4485 6288 5281 2769","146",3309,9795,"Débito",3),
  ("3478 548172 74736","725",6081,6504,"Crédito",3),
  ("4916 5686 2827 8326","558",8479,4277,"Débito",1),
  ("5296 6621 8846 7286","324",1208,7355,"Crédito",1),
  ("3744 558585 32671","406",8402,1159,"Débito",2),
  ("3445 599413 13622","464",3621,4186,"Crédito",2),
  ("3457 376387 88699","592",4025,6733,"Crédito",3),
  ("5581 8553 9572 6486","150",4724,4134,"Crédito",3),
  ("4887 3376 4786 9779","127",7199,7427,"Débito",1),
  ("4556 9436 8785 8661","148",7493,4850,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5417 5333 5627 3844","337",3236,4725,"Crédito",2),
  ("4716 7287 1439 3874","470",3279,1988,"Crédito",2),
  ("3768 345415 35630","842",1736,2524,"Crédito",3),
  ("5335 5565 5546 2271","850",8961,5465,"Débito",3),
  ("3779 812844 85744","200",6535,1741,"Débito",1),
  ("4024 0071 2568 4198","921",2799,3306,"Débito",1),
  ("3496 985678 13716","420",5593,3304,"Débito",2),
  ("5368 5533 1252 2521","878",2959,4535,"Débito",2),
  ("4929 5159 7188 5616","808",6193,9849,"Débito",3),
  ("3749 773483 12851","640",6829,4440,"Crédito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4152 5372 7562 8565","520",2585,2256,"Crédito",1),
  ("4532 7822 8735 5440","272",7437,6890,"Débito",1),
  ("4539 7376 7775 9448","628",2381,5434,"Débito",2),
  ("4024 0071 4437 6347","450",5837,3767,"Crédito",2),
  ("3423 477242 53229","150",6973,2409,"Débito",3),
  ("4438 4648 9723 1783","761",7128,7281,"Crédito",3),
  ("3433 846783 48886","817",5952,9513,"Crédito",1),
  ("5467 7275 2817 3523","113",6812,6535,"Débito",1),
  ("5554 7316 5563 1455","494",4932,3052,"Débito",2),
  ("4532 4862 9828 1229","384",8812,4581,"Crédito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4716 4214 1648 2753","351",3134,8614,"Crédito",3),
  ("5243 2255 9395 8374","275",4522,5407,"Crédito",3),
  ("4532 6666 7447 2530","183",4450,8240,"Débito",1),
  ("3431 284747 48777","414",2653,8871,"Débito",1),
  ("3726 122827 12137","851",7905,6325,"Débito",2),
  ("5558 4549 2163 4676","543",5442,1047,"Crédito",2),
  ("5257 4723 7478 1541","991",9193,4371,"Débito",3),
  ("3432 217284 51189","737",2834,8716,"Crédito",3),
  ("5123 5698 2742 2383","684",8910,7474,"Crédito",1),
  ("4929 2678 9837 4338","171",2294,3598,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4485 1111 5259 8727","262",1758,8436,"Crédito",2),
  ("5126 8361 3828 4845","253",3416,4401,"Crédito",2),
  ("4716 6877 5722 5122","770",6320,3805,"Crédito",3),
  ("3417 175218 94725","956",3997,3965,"Crédito",3),
  ("4485 7452 7647 4917","636",2866,3415,"Débito",1),
  ("5235 7865 7775 5854","478",4703,7726,"Crédito",1),
  ("3437 264385 86363","862",2101,5598,"Débito",2),
  ("5366 1255 6434 7857","450",1322,4627,"Débito",2),
  ("5144 3633 3132 7691","422",4700,1094,"Débito",3),
  ("3735 841453 88471","186",1707,1834,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3794 426561 34152","177",4465,4112,"Débito",1),
  ("4916 4795 5835 6647","593",4818,9719,"Crédito",1),
  ("5463 4724 6487 3216","913",3068,5896,"Crédito",2),
  ("3797 715552 33784","420",3989,7121,"Crédito",2),
  ("3459 297627 53439","683",6404,4658,"Crédito",3),
  ("4556 4265 4677 1242","670",3901,8062,"Débito",3),
  ("5329 7356 1266 7449","541",5484,1725,"Crédito",1),
  ("4024 0071 5922 1958","927",5692,7536,"Crédito",1),
  ("4929 7514 7391 2240","901",6079,5641,"Crédito",2),
  ("3789 795458 73152","956",9997,6446,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3757 452844 52844","715",9797,4751,"Débito",3),
  ("4532 7873 2458 3649","415",4717,7939,"Débito",3),
  ("3444 823123 66923","132",1412,3425,"Débito",1),
  ("3727 318792 76585","879",4675,8710,"Crédito",1),
  ("3745 639793 13754","386",4057,3403,"Débito",2),
  ("4024 0071 7836 2619","278",1156,9099,"Débito",2),
  ("4297 2614 1466 6685","467",2527,5809,"Débito",3),
  ("4024 0071 6178 7772","998",7183,6168,"Débito",3),
  ("3428 654529 77578","311",6430,4287,"Débito",1),
  ("3791 448321 42667","386",5643,9504,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5315 5778 8473 3541","386",9885,7020,"Débito",2),
  ("3421 641731 82449","390",7198,3896,"Débito",2),
  ("3443 872777 35667","223",4569,1466,"Crédito",3),
  ("3427 383621 31877","444",5650,2532,"Crédito",3),
  ("3475 738625 51737","240",7109,3402,"Débito",1),
  ("5283 5111 2862 3794","324",5999,6511,"Débito",1),
  ("5571 3673 6369 3526","304",7707,5956,"Crédito",2),
  ("3421 656775 34431","489",5232,9016,"Crédito",2),
  ("3766 256686 45982","597",5447,1536,"Débito",3),
  ("3778 355729 29716","926",7864,8013,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5229 6224 2422 4646","153",4676,1538,"Débito",1),
  ("5394 8588 5432 3859","521",5511,5743,"Débito",1),
  ("4929 5467 5168 9324","355",4071,9051,"Débito",2),
  ("3767 273655 23452","906",8261,9212,"Débito",2),
  ("4539 3862 7923 3285","654",6320,5401,"Crédito",3),
  ("5457 7287 6313 1558","307",9785,6895,"Crédito",3),
  ("5156 3755 5737 4988","581",8516,3252,"Crédito",1),
  ("5269 7546 2835 4951","322",1526,2838,"Débito",1),
  ("3748 474699 98210","994",3887,1123,"Crédito",2),
  ("3465 362573 43565","695",7726,3454,"Crédito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5277 4273 8886 7583","444",1414,4655,"Crédito",3),
  ("3474 224868 87541","620",9200,8175,"Débito",3),
  ("5258 6269 4616 1222","350",6134,8088,"Débito",1),
  ("5565 3754 7927 4543","890",6102,1322,"Crédito",1),
  ("4024 0071 1632 3673","510",1645,7771,"Débito",2),
  ("5428 3462 5377 3973","458",9852,4398,"Crédito",2),
  ("3749 336922 56475","268",3356,3690,"Crédito",3),
  ("5481 7968 3349 7473","493",6532,1491,"Débito",3),
  ("4716 2272 7447 4935","513",6230,6933,"Débito",1),
  ("5283 7183 3976 3257","845",2849,7188,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5495 8265 7443 6820","239",5093,5068,"Débito",2),
  ("4556 7371 8943 2474","448",6881,7262,"Crédito",2),
  ("4532 3281 6478 1652","415",4481,7791,"Crédito",3),
  ("5466 4296 2263 6122","200",8643,1899,"Crédito",3),
  ("5431 2625 5977 2558","180",4327,8322,"Crédito",1),
  ("3725 734895 75679","739",2721,6314,"Débito",1),
  ("5327 8431 5831 4517","552",7449,5425,"Débito",2),
  ("3726 453874 36244","929",2377,2308,"Débito",2),
  ("5526 7484 5699 8367","191",1614,4122,"Crédito",3),
  ("5224 4745 5812 8192","417",3469,1817,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4485 8367 7362 5745","492",6172,8737,"Crédito",1),
  ("3784 438666 33414","769",8411,7127,"Crédito",1),
  ("3477 676349 22164","154",9678,8296,"Débito",2),
  ("4024 0071 8159 2343","400",4612,3408,"Débito",2),
  ("3425 191475 57440","795",8544,8894,"Crédito",3),
  ("4532 9625 2321 4383","977",4731,5070,"Débito",3),
  ("3743 927963 99386","878",7285,9043,"Débito",1),
  ("4458 1425 6556 7515","764",5237,8895,"Débito",1),
  ("5373 8826 3238 8765","836",6627,7678,"Débito",2),
  ("5337 8678 3275 2220","835",2760,7890,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5335 5567 8125 5911","113",2900,6267,"Débito",3),
  ("3431 557287 47727","635",8490,4000,"Crédito",3),
  ("4532 8723 2347 9344","363",4845,3576,"Crédito",1),
  ("3445 278868 87678","979",2371,6572,"Débito",1),
  ("5395 3362 5581 7596","591",5728,9779,"Crédito",2),
  ("3744 242632 52630","713",8297,7711,"Débito",2),
  ("4532 9621 5466 7651","224",2894,4036,"Crédito",3),
  ("3468 384678 34775","696",8957,1160,"Débito",3),
  ("3437 922453 52266","154",7323,7701,"Crédito",1),
  ("3744 525586 66115","250",5461,4488,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3728 468466 26637","967",6675,9653,"Débito",2),
  ("5177 2238 5382 4485","707",2076,5661,"Débito",2),
  ("3754 213978 83842","464",2945,8654,"Débito",3),
  ("5426 8455 5556 7563","510",4915,9891,"Crédito",3),
  ("3752 975811 87368","213",9475,2866,"Crédito",1),
  ("4485 6291 9563 8861","663",4152,3245,"Crédito",1),
  ("5464 2683 5771 7174","209",6098,7913,"Débito",2),
  ("5271 2948 4487 3472","942",9899,5267,"Débito",2),
  ("3767 678843 73294","145",2384,4383,"Débito",3),
  ("5557 1751 4498 8141","713",6833,1844,"Crédito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5348 4513 4793 8256","387",4010,2354,"Débito",1),
  ("5547 6578 4372 4441","684",9036,9434,"Crédito",1),
  ("5266 3883 8474 4346","266",2577,7520,"Crédito",2),
  ("3425 457847 91778","594",5523,3941,"Débito",2),
  ("3747 283456 51365","243",8050,6112,"Crédito",3),
  ("5293 6847 6879 4882","275",8937,5925,"Débito",3),
  ("4485 5276 4651 5649","828",6507,6500,"Débito",1),
  ("5427 5377 5242 6771","711",9348,6188,"Crédito",1),
  ("3437 467938 28648","492",4929,7856,"Crédito",2),
  ("3745 962647 22685","441",9169,3746,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3718 645946 49793","400",4715,5681,"Crédito",3),
  ("5264 4477 7659 5674","353",6516,4679,"Débito",3),
  ("4024 0071 6762 2841","418",1500,8795,"Crédito",1),
  ("5476 8962 6249 1364","597",4242,8648,"Crédito",1),
  ("3779 253881 84521","597",8793,5033,"Crédito",2),
  ("3768 776322 35529","408",8436,7078,"Débito",2),
  ("5133 5924 3844 5526","645",3897,2339,"Débito",3),
  ("3414 347364 57880","282",1625,6661,"Crédito",3),
  ("4485 1452 3765 2422","591",4559,1790,"Débito",1),
  ("3431 283823 36855","823",4783,5359,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4916 4666 9643 6449","536",7753,5941,"Débito",2),
  ("3462 146685 37262","820",3542,7375,"Crédito",2),
  ("5487 7134 3477 2943","602",8038,1091,"Débito",3),
  ("3754 584495 86429","174",9307,1376,"Débito",3),
  ("5425 2931 5424 7967","666",7894,6828,"Débito",1),
  ("5166 6242 7535 8841","533",8199,8497,"Crédito",1),
  ("4716 4392 2897 4239","629",4540,5262,"Débito",2),
  ("5484 3482 4187 5432","350",7858,1496,"Débito",2),
  ("5575 9136 3152 9822","875",5209,7274,"Débito",3),
  ("4485 8354 5779 5261","892",4519,4847,"Crédito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5388 7263 1823 4616","402",5833,6608,"Crédito",1),
  ("5593 3647 2218 7229","190",1191,7222,"Crédito",1),
  ("4916 4146 8362 2662","983",7137,8398,"Débito",2),
  ("3486 346578 13689","985",3761,1105,"Débito",2),
  ("4218 7241 4225 6471","223",1187,6241,"Débito",3),
  ("5268 8895 3514 8426","896",1664,5216,"Débito",3),
  ("4485 7442 5669 6516","398",3273,6622,"Crédito",1),
  ("4485 3385 8765 4573","487",8294,6252,"Débito",1),
  ("3772 636877 34212","740",2049,8016,"Crédito",2),
  ("4485 4777 5934 4421","727",6557,6818,"Crédito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3477 565845 63342","235",9048,7651,"Crédito",3),
  ("5232 9284 7682 6559","303",1338,5015,"Débito",3),
  ("4024 0071 4664 2654","265",1007,8268,"Crédito",1),
  ("3423 469653 31694","544",7021,6380,"Débito",1),
  ("4024 0071 4726 3682","327",2630,3904,"Crédito",2),
  ("5192 2514 5363 7727","468",4095,6162,"Débito",2),
  ("3484 554668 52241","828",3420,5183,"Crédito",3),
  ("3476 825236 82979","276",6989,3924,"Crédito",3),
  ("5568 7852 6526 6866","458",6544,9464,"Crédito",1),
  ("3749 544286 64543","240",2928,3421,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5423 5724 6461 6454","517",7918,6479,"Débito",2),
  ("3454 879283 88236","588",6661,9681,"Débito",2),
  ("3476 577537 87789","654",5561,2551,"Débito",3),
  ("3784 477974 68568","588",7192,1415,"Débito",3),
  ("3462 774553 39390","510",1372,5414,"Crédito",1),
  ("3758 426633 39161","924",9204,4045,"Débito",1),
  ("5463 3939 7541 3252","702",6843,1708,"Débito",2),
  ("4916 7224 7377 2848","547",2001,8304,"Débito",2),
  ("3495 823773 34677","291",4616,2664,"Crédito",3),
  ("4916 4587 8337 5358","560",6564,8334,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3747 653434 55639","377",4874,7298,"Débito",1),
  ("4716 8443 1561 4327","462",5329,8062,"Débito",1),
  ("4532 4438 8669 6987","910",3132,2829,"Débito",2),
  ("3446 514237 33839","677",1920,5935,"Débito",2),
  ("5188 8233 4267 4263","933",1135,4654,"Crédito",3),
  ("3755 567395 35756","499",1938,5502,"Débito",3),
  ("5365 1229 3293 6850","225",1061,1198,"Débito",1),
  ("4644 5176 8417 5958","355",9730,9624,"Crédito",1),
  ("5141 2471 1678 3884","352",8658,4270,"Débito",2),
  ("3457 363298 34374","796",2300,3049,"Crédito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3452 421446 17466","703",1864,1829,"Débito",3),
  ("5398 4836 5131 8717","129",6409,1579,"Débito",3),
  ("5429 6585 7552 5223","751",1596,2632,"Crédito",1),
  ("4024 0071 2875 4634","276",1397,2961,"Crédito",1),
  ("4716 1436 9113 3642","684",2527,3443,"Débito",2),
  ("5121 3561 7745 8627","925",3146,8272,"Débito",2),
  ("3755 373185 73129","449",6718,7901,"Crédito",3),
  ("3713 846517 52539","828",3749,4680,"Débito",3),
  ("5493 5332 2452 3724","356",6122,1998,"Crédito",1),
  ("3727 765743 76669","376",5354,8090,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4916 1351 2572 4788","174",5146,3889,"Débito",2),
  ("5353 8462 8951 8549","872",3783,5000,"Débito",2),
  ("4485 3678 8422 5266","943",7283,5151,"Crédito",3),
  ("3755 479645 85566","815",9164,5611,"Débito",3),
  ("4556 4498 5436 8435","673",6140,8309,"Débito",1),
  ("3725 489556 99518","150",8597,4456,"Crédito",1),
  ("5317 7571 4229 2484","295",7374,8979,"Crédito",2),
  ("5441 1487 3467 5337","733",3295,5513,"Débito",2),
  ("4716 2286 8452 6264","712",6660,1358,"Crédito",3),
  ("5554 3153 4423 3947","972",7832,9361,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4024 0071 9351 6116","891",9124,4352,"Débito",1),
  ("3752 869243 14854","389",2330,5653,"Crédito",1),
  ("4532 4471 5157 2740","914",8295,9986,"Crédito",2),
  ("4916 6847 7465 6148","928",8329,5467,"Débito",2),
  ("4929 8573 7988 6287","695",4076,1298,"Crédito",3),
  ("5348 8774 6437 6971","675",4188,4411,"Débito",3),
  ("4539 7315 6872 5824","882",4113,5858,"Débito",1),
  ("4485 4563 2663 2534","599",2013,6348,"Débito",1),
  ("4485 4366 4278 3740","149",1744,7996,"Débito",2),
  ("5477 8936 1245 5362","215",2041,4143,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3771 789287 25243","220",8613,5862,"Crédito",3),
  ("4539 2326 8857 2311","448",5729,1840,"Crédito",3),
  ("4556 8877 1649 7225","446",7696,9231,"Crédito",1),
  ("3784 316183 82869","634",9396,8802,"Débito",1),
  ("4929 3785 9351 9182","228",1475,6549,"Débito",2),
  ("4668 7799 4576 7210","218",2861,3683,"Débito",2),
  ("5531 1784 5256 2533","723",6670,3898,"Débito",3),
  ("4929 4444 2265 1271","571",8046,7838,"Débito",3),
  ("3486 676349 32552","932",5104,1919,"Débito",1),
  ("5474 8832 5559 2236","350",8211,5041,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5372 7997 8587 8528","176",8805,1770,"Crédito",2),
  ("4539 7899 4358 8549","210",7906,4551,"Crédito",2),
  ("3427 843225 73832","979",8212,3727,"Crédito",3),
  ("3797 663574 46683","740",1939,4367,"Crédito",3),
  ("3749 564788 85712","226",9139,1687,"Débito",1),
  ("4965 6248 6774 6737","797",8299,5720,"Débito",1),
  ("4539 1984 9374 4181","625",5089,8394,"Crédito",2),
  ("5595 3484 6447 8753","434",8245,5910,"Débito",2),
  ("4929 7966 3957 9763","967",1469,1746,"Débito",3),
  ("3739 776468 17446","902",9615,9901,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5343 2864 4852 6252","861",8174,4502,"Crédito",1),
  ("3774 966646 47367","699",9798,8389,"Crédito",1),
  ("4556 7349 2772 3652","406",1220,6514,"Crédito",2),
  ("4485 5431 3747 2570","159",9620,7483,"Crédito",2),
  ("5378 8671 9518 6776","132",1177,9753,"Crédito",3),
  ("5292 7582 5338 8748","505",8255,6702,"Crédito",3),
  ("5447 5121 5338 6615","998",7941,8315,"Débito",1),
  ("4867 5472 4454 4765","702",5923,8373,"Crédito",1),
  ("5536 3134 4418 2521","592",5434,6612,"Crédito",2),
  ("3798 323453 15529","669",7800,9172,"Crédito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4532 2322 6526 4677","767",5736,9605,"Crédito",3),
  ("4526 8622 6398 1266","899",9020,6190,"Débito",3),
  ("3499 537437 39859","506",9813,3021,"Crédito",1),
  ("4532 5986 5419 3853","936",2315,2202,"Débito",1),
  ("3432 413482 43956","994",4391,9084,"Débito",2),
  ("4929 3216 6337 3692","950",1199,2240,"Crédito",2),
  ("3712 259472 37431","975",4549,5802,"Débito",3),
  ("5436 5378 9934 7251","312",1377,5592,"Débito",3),
  ("4532 5422 7972 5558","391",9847,5467,"Débito",1),
  ("4532 5815 7649 5747","433",1214,5419,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3413 431387 43427","977",6139,9768,"Crédito",2),
  ("5288 8837 1857 4470","325",5371,5830,"Débito",2),
  ("4539 1473 1569 4363","616",5699,5287,"Crédito",3),
  ("5289 4228 2625 2270","672",4608,9961,"Crédito",3),
  ("4485 5428 2558 9851","257",9914,6827,"Débito",1),
  ("4539 4994 4715 3580","792",3081,9012,"Crédito",1),
  ("4024 0071 6656 6684","627",4602,8600,"Crédito",2),
  ("3743 818363 18134","842",6160,6410,"Crédito",2),
  ("4024 0071 7834 4633","960",8150,2820,"Débito",3),
  ("3432 737132 13637","673",6218,9076,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4652 3663 2212 8758","588",1969,3505,"Crédito",1),
  ("3425 795584 64387","875",6930,1747,"Débito",1),
  ("4929 2517 4112 5758","917",4649,8986,"Crédito",2),
  ("3783 623823 84684","198",4744,1742,"Crédito",2),
  ("5148 8864 6451 5886","171",5887,6577,"Débito",3),
  ("3775 277483 98856","954",3878,5601,"Crédito",3),
  ("3787 527854 73375","901",9469,4309,"Débito",1),
  ("3418 272787 52370","303",9100,3397,"Débito",1),
  ("5395 8146 5387 1670","705",3131,2341,"Crédito",2),
  ("4539 7585 4414 5348","917",5346,4063,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4485 5185 8788 7329","858",4098,1482,"Débito",3),
  ("3748 725424 52431","112",4484,2744,"Crédito",3),
  ("5255 5363 2341 7282","480",4593,4708,"Débito",1),
  ("3769 866366 82386","959",8391,3201,"Débito",1),
  ("5267 1145 4726 1690","441",8892,4998,"Débito",2),
  ("3453 448245 94484","423",8885,2803,"Débito",2),
  ("4716 4338 3713 6819","788",4413,5722,"Crédito",3),
  ("3464 872314 86262","904",4928,4991,"Débito",3),
  ("3782 573823 43898","192",1372,8054,"Crédito",1),
  ("5256 2626 5326 2748","123",4197,9864,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5435 7939 6738 7940","619",6660,1900,"Crédito",2),
  ("5312 7476 4261 1783","606",1200,7010,"Crédito",2),
  ("4539 4675 7234 6329","169",8579,9327,"Débito",3),
  ("4556 7311 4664 9122","364",8672,2985,"Débito",3),
  ("5461 1366 2235 1363","776",9910,2859,"Crédito",1),
  ("3433 284155 83552","574",7063,9123,"Débito",1),
  ("3741 543439 34291","763",1861,8327,"Crédito",2),
  ("4716 6689 7194 7485","128",6060,2413,"Crédito",2),
  ("5455 5663 8643 7859","326",1595,3149,"Crédito",3),
  ("4024 0071 4739 4149","545",5758,9257,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4916 3961 2624 5260","751",1185,9375,"Crédito",1),
  ("4716 3432 4262 5456","194",6372,4936,"Débito",1),
  ("3752 765737 73781","984",7589,1539,"Crédito",2),
  ("5583 3612 4324 3749","339",6456,7202,"Crédito",2),
  ("5321 2317 9826 9240","609",3851,8919,"Crédito",3),
  ("4024 0071 6885 4757","381",1150,4815,"Crédito",3),
  ("4539 5333 1121 8556","908",8308,7409,"Crédito",1),
  ("5456 9843 5725 7199","847",3262,5758,"Débito",1),
  ("3438 889865 43541","646",3610,4657,"Crédito",2),
  ("3457 222566 45843","171",5817,4053,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5134 3864 6525 4482","423",3951,7591,"Débito",3),
  ("4024 0071 3544 3437","584",5901,6967,"Crédito",3),
  ("4485 2768 2885 3242","754",2966,3870,"Débito",1),
  ("4024 0071 8233 8753","707",4926,4631,"Débito",1),
  ("4646 4997 7666 3886","365",6920,7395,"Crédito",2),
  ("5374 9889 8667 5282","481",3339,8983,"Débito",2),
  ("3754 572384 44741","398",5849,2040,"Crédito",3),
  ("4024 0071 5834 3720","804",9036,8182,"Débito",3),
  ("3737 611789 98166","156",3488,4785,"Débito",1),
  ("3464 126433 62489","966",8146,2708,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4525 7295 2796 7327","973",3175,1266,"Crédito",2),
  ("5159 4495 3328 8567","122",1202,4479,"Débito",2),
  ("3749 636247 63116","542",6632,3072,"Crédito",3),
  ("4485 5818 5147 1634","408",2065,2670,"Crédito",3),
  ("3475 633877 93971","579",2967,5009,"Débito",1),
  ("5453 4355 3567 9385","643",5143,8654,"Crédito",1),
  ("4929 7876 6255 6281","816",3339,5787,"Débito",2),
  ("3763 427736 42629","844",7294,5303,"Débito",2),
  ("5573 8837 6349 5971","196",5026,5909,"Débito",3),
  ("4539 2676 1374 3819","329",9995,8542,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5361 6265 3546 5871","312",9138,2496,"Crédito",1),
  ("4485 2664 7398 9441","532",7316,4316,"Crédito",1),
  ("3437 132672 67653","859",4743,3942,"Crédito",2),
  ("3435 753134 21372","693",5252,1440,"Crédito",2),
  ("4556 4518 7828 6635","581",6144,1520,"Débito",3),
  ("4916 2522 7918 9237","483",8710,6616,"Crédito",3),
  ("3435 721625 27797","484",1808,4409,"Crédito",1),
  ("5545 2642 8433 7866","737",4436,3103,"Crédito",1),
  ("4485 6235 6492 3525","355",8972,2534,"Débito",2),
  ("4485 1496 4687 8883","561",6159,8071,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4716 5417 3333 1621","247",2412,5817,"Crédito",3),
  ("5485 8693 3723 8291","717",3121,7562,"Crédito",3),
  ("5373 2588 7776 4434","777",1146,3176,"Débito",1),
  ("3753 774346 23684","735",5002,4704,"Crédito",1),
  ("3416 252467 54530","777",1517,4849,"Crédito",2),
  ("5149 4147 6268 6371","488",3599,2850,"Crédito",2),
  ("5493 4523 4437 6394","144",8003,9678,"Crédito",3),
  ("3444 163946 91410","251",2300,6365,"Débito",3),
  ("5432 1132 5528 2229","115",7470,3131,"Débito",1),
  ("5365 6253 8637 9971","500",5583,4801,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3452 426725 59858","624",6406,7927,"Débito",2),
  ("4246 4513 2524 8473","600",4327,3958,"Crédito",2),
  ("4556 9133 4284 8324","657",8942,9938,"Débito",3),
  ("3455 788323 57190","572",8561,8891,"Débito",3),
  ("3745 872548 97645","495",4675,9028,"Débito",1),
  ("3788 284533 29832","734",5671,2613,"Crédito",1),
  ("4024 0071 8747 2961","752",7320,3716,"Débito",2),
  ("5289 5482 2678 7125","702",1251,4258,"Débito",2),
  ("4916 1851 2272 8555","522",8202,2046,"Crédito",3),
  ("5527 4335 9224 3346","290",6928,1933,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5183 7394 4555 7459","248",3365,2229,"Crédito",1),
  ("5142 2623 7677 3326","450",3244,8971,"Débito",1),
  ("3772 524513 63555","312",3005,3761,"Débito",2),
  ("5174 7561 4214 7955","834",6673,6792,"Crédito",2),
  ("5196 7517 1996 7475","728",7903,2123,"Débito",3),
  ("5254 3183 3385 1417","172",9917,1662,"Débito",3),
  ("4539 3782 5361 3558","609",4895,1574,"Débito",1),
  ("5353 2739 4386 5424","996",4656,8210,"Crédito",1),
  ("5513 3238 7375 1529","884",9111,6743,"Crédito",2),
  ("3445 382752 44835","354",2559,4962,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5192 4772 3522 1635","771",5020,1961,"Crédito",3),
  ("5395 7446 5344 8684","462",6687,1043,"Crédito",3),
  ("4485 6828 8322 5343","371",4972,6797,"Crédito",1),
  ("3486 517433 82651","781",2903,8574,"Crédito",1),
  ("4542 5383 9379 1334","903",5879,7224,"Débito",2),
  ("3714 772973 29231","242",5814,4304,"Débito",2),
  ("4916 3735 8766 5617","989",4164,7615,"Crédito",3),
  ("3472 929868 72768","631",5574,4800,"Crédito",3),
  ("3417 556951 79341","722",1054,5906,"Crédito",1),
  ("3496 558658 26857","743",8703,2937,"Crédito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5281 3785 6228 2855","614",1414,6934,"Crédito",2),
  ("4485 2765 9728 4769","189",9676,2293,"Débito",2),
  ("4485 5724 1766 3541","940",8581,4029,"Crédito",3),
  ("3425 194872 19577","451",3669,7516,"Crédito",3),
  ("4716 6757 6573 2841","820",6354,2865,"Débito",1),
  ("4485 7135 3234 8416","174",3206,2380,"Crédito",1),
  ("3422 648956 39831","475",8247,4333,"Crédito",2),
  ("4883 8578 3816 1367","765",1154,8157,"Crédito",2),
  ("3493 326756 58256","663",9858,5560,"Débito",3),
  ("4539 4549 5568 5549","620",9996,2746,"Crédito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4485 7326 9718 5348","738",5780,7067,"Débito",1),
  ("5488 9575 6568 6831","588",5560,1552,"Crédito",1),
  ("4716 4324 7273 1744","805",9552,8976,"Crédito",2),
  ("5441 5375 9538 5582","229",9267,6101,"Débito",2),
  ("4916 5365 6387 7717","267",4689,5424,"Crédito",3),
  ("5449 5348 8578 2687","877",7910,9588,"Crédito",3),
  ("4916 7759 8339 6482","730",9003,9876,"Débito",1),
  ("5586 6735 8337 7748","173",2399,5118,"Crédito",1),
  ("3449 338493 62199","120",9092,2568,"Débito",2),
  ("5244 4473 7468 7183","137",2531,7439,"Débito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("5283 5372 2823 7466","302",3788,6067,"Crédito",3),
  ("5221 7566 3336 5986","297",1726,9138,"Débito",3),
  ("5132 4444 5854 8550","524",6694,6103,"Crédito",1),
  ("4716 2684 8684 7476","410",4457,3280,"Crédito",1),
  ("3477 521586 38669","827",8697,9810,"Débito",2),
  ("5324 2232 7384 1939","364",3986,4352,"Débito",2),
  ("5386 7814 2627 2430","298",5403,8576,"Crédito",3),
  ("3424 253383 23925","855",1163,1542,"Débito",3),
  ("4024 0071 5365 5672","710",8361,9416,"Crédito",1),
  ("5583 2174 8475 5389","362",3725,4621,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3434 111664 28456","897",7581,8016,"Crédito",2),
  ("4648 3885 4128 4557","944",8814,1789,"Débito",2),
  ("5268 7648 8225 8658","926",1356,5972,"Crédito",3),
  ("3779 434382 35318","217",2867,1885,"Crédito",3),
  ("3733 223116 12410","747",7238,6935,"Crédito",1),
  ("3723 435988 24743","935",5191,9401,"Débito",1),
  ("5176 9728 9425 1758","262",2197,8916,"Débito",2),
  ("5455 5829 3186 3465","422",3193,9449,"Crédito",2),
  ("3776 344732 99950","533",5552,8189,"Crédito",3),
  ("5547 6149 2876 4412","581",3705,4276,"Crédito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3464 669588 85864","451",1595,9238,"Débito",1),
  ("4716 6842 4231 4397","549",7984,9073,"Débito",1),
  ("4916 6936 6257 1889","527",4915,6126,"Débito",2),
  ("4539 1945 6654 8849","447",7095,1996,"Crédito",2),
  ("5566 3722 6425 3310","823",7949,1889,"Crédito",3),
  ("4332 8386 4286 3486","707",7820,5962,"Crédito",3),
  ("4539 8465 6283 2473","649",1724,7909,"Crédito",1),
  ("4463 6426 8831 6768","871",6223,6540,"Crédito",1),
  ("5561 7846 4914 8871","485",7165,8970,"Débito",2),
  ("5173 6268 8771 2530","686",4054,4178,"Crédito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("3426 229248 51489","510",1940,3566,"Débito",3),
  ("3754 252272 32260","191",3130,6399,"Crédito",3),
  ("3743 534789 91650","666",2379,4597,"Crédito",1),
  ("5575 3876 3247 5543","621",8424,3949,"Crédito",1),
  ("4532 5829 3372 7442","684",5205,1169,"Crédito",2),
  ("5363 3278 4937 3129","625",1873,7260,"Crédito",2),
  ("4929 1125 2651 8189","133",9004,6975,"Débito",3),
  ("4024 0071 8745 7731","642",8943,4631,"Débito",3),
  ("4539 7156 4524 8769","357",3831,5383,"Crédito",1),
  ("4539 2242 4298 5741","741",2908,3400,"Débito",1);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4916 2342 4153 8972","882",1984,8092,"Débito",2),
  ("4929 5881 3626 4886","162",7156,5269,"Débito",2),
  ("4929 4783 4991 4891","193",9990,3513,"Débito",3),
  ("3446 556496 83538","308",5930,7766,"Débito",3),
  ("4716 7637 8869 2398","840",2840,1057,"Crédito",1),
  ("5125 8267 4529 4718","871",6003,5767,"Débito",1),
  ("4539 5768 7665 7247","818",2859,4456,"Débito",2),
  ("3486 351161 53260","776",1308,7687,"Crédito",2),
  ("4539 4665 4369 8891","396",3773,9806,"Débito",3),
  ("5414 4619 2393 3414","528",2547,2749,"Débito",3);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4929 9655 3559 7522","308",8528,6957,"Crédito",1),
  ("3454 626529 27632","768",2210,4784,"Crédito",1),
  ("3753 688755 25983","569",9507,3444,"Débito",2),
  ("4556 9866 6273 6592","684",5657,9912,"Crédito",2),
  ("5199 1618 6448 6312","626",8269,2895,"Crédito",3),
  ("4556 6951 9798 3344","692",4516,5216,"Débito",3),
  ("5267 8617 1362 3661","306",9507,1724,"Débito",1),
  ("5194 6888 9568 8891","450",3158,6566,"Crédito",1),
  ("5385 9937 4944 3256","693",8522,4302,"Débito",2),
  ("4929 3532 4476 7639","126",7419,9088,"Crédito",2);
INSERT INTO `tarjeta` (`numero`,`CVV`,`fecha_de_otorgamiento`,`fecha_de_vencimiento`,`tipo_tarjeta`,`marca_tarjeta_id`)
VALUES
  ("4532 3677 9755 9747","700",5615,2132,"Crédito",3),
  ("5116 2357 6665 3227","444",1533,7715,"Débito",3),
  ("3758 629457 51249","781",3767,8621,"Crédito",1),
  ("4539 2676 6286 9192","634",1185,1607,"Débito",1),
  ("4485 6654 2254 2419","539",7070,5482,"Crédito",2),
  ("5228 3615 1972 3268","933",8246,1187,"Crédito",2),
  ("4532 4223 4614 6957","411",1795,1968,"Débito",3),
  ("5486 4361 3554 6835","232",7142,3346,"Débito",3),
  ("4556 7395 9673 4740","934",3092,5119,"Crédito",1),
  ("4645 4658 2629 8263","546",9909,1208,"Débito",1);