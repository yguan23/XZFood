use WebProject;

create table Maps(
	id int not null primary key identity(1,1),
	name nvarchar(50) not null,
	address nvarchar(50) not null,
	phone nvarchar(50) not null,
	comment nvarchar(50) not null,
);

insert into  Maps(name, address, phone, comment) values('魚多甜','242新北市新莊區建國一路1號','02-2908-8505','CP值很高,交通便利,服務人員態度親切');
insert into  Maps(name, address, phone, comment) values('想初享廚','242新北市新莊區中正路514巷91號','02-2904-6666','咖哩味道很好,可以免費加一次咖哩,白飯免費續');
insert into  Maps(name, address, phone, comment) values('陶花園輔大豬排','242新北市新莊區中正路514巷7號','02-2904-7868','大片的豬排，酥脆又厚實，醬汁選擇多');
insert into  Maps(name, address, phone, comment) values('輔大興德屏東夜市豆花','242新北市新莊區中正路514巷61號','02-2901-2439','價格算是很便宜,各項配料都非常入味');
insert into  Maps(name, address, phone, comment) values('麻麻號','242新北市新莊區中正路516之37號2樓','02-2901-3233','學校平價美食,以百元的價位可以吃到這麼多,真的很超值!');
insert into  Maps(name, address, phone, comment) values('雪城麻辣燙','242新北市新莊區中正路514巷19號','0983-037-865','湯頭好喝!用秤重的比較容易吃到多樣菜色');
insert into  Maps(name, address, phone, comment) values('老葉牛肉麵創始店','242新北市新莊區建國一路14號','02-2908-7278','小菜自己夾自己切,味道入味,特別推薦真空包豬耳朵,軟嫩油香');
insert into  Maps(name, address, phone, comment) values('柒串燒屋','24255新北市新莊區中正路516-32號','02-2902-1770','交通便利鄰近輔大站,現點現烤');
insert into  Maps(name, address, phone, comment) values('磯壽司(青壽司)','242新北市新莊區中正路498號','02-2908-2808','老闆用心選食材,做出的完美無菜單日本料理');
insert into  Maps(name, address, phone, comment) values('靴子義大利餐館','242新北市新莊區中正路593號','02-2906-8820','用料實在,環境舒服,服務態度很好');
insert into  Maps(name, address, phone, comment) values('安東尼義式廚房','242新北市新莊區中正路514巷39號','02-2901-2660','品項多,價格好,免費加麵,飲料是自助吧的');
insert into  Maps(name, address, phone, comment) values('元珍食堂','242新北市新莊區中正路514巷31號','02-2902-8579','口味不像正統的韓式,但很合台灣人的胃口,小菜飲料無限量供應');
insert into  Maps(name, address, phone, comment) values('石二鍋','242新北市新莊區建國一路61號','02-2908-4166','離輔大稍微有點距離,價格平實,湯頭很棒,所有食材都處理的很好,也很新鮮,天冷時想吃鍋的首選');
insert into  Maps(name, address, phone, comment) values('元氣脆皮章魚燒','242新北市新莊區建國一路44號','0955-706-562','皮酥脆口感紮實,特別推薦蜂蜜芥末口味,微辣帶甜');
insert into  Maps(name, address, phone, comment) values('惹披薩','242新北市新莊區中正路514巷43號','02-2902-4516','CP值很高,除了吃到飽也有單點的方式可做選擇');
insert into  Maps(name, address, phone, comment) values('檸檬草美食茶房','242新北市新莊區中正路571號','02-2903-5188','超級推薦炸芝麻湯圓也很讚,湯圓還會爆汁');
insert into  Maps(name, address, phone, comment) values('壹等葉台灣牛肉小館','242新北市新莊區中正路494號','02-2902-0678','用了大量的蔬菜下去烹調,非常鮮美,牛肉軟硬適中,吃得出牛肉的香味');
insert into  Maps(name, address, phone, comment) values('曲肯叔叔美式炸雞','24257新北市新莊區建國一路26號','0958-044-547','店內乾淨整潔,老闆跟店員人很好,東西也好吃');
insert into  Maps(name, address, phone, comment) values('鵝狀元','242新北市新莊區建國一路6號','02-2901-3333','滷白菜有點油,但很入味很好吃');
insert into  Maps(name, address, phone, comment) values('大汗麻辣鴨血豆腐老鐵炸雞','242新北市新莊區建國一路19號','02-2908-5806','料蠻豐盛的，味道也好');

select * from Maps;