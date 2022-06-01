create table pembeli (
	id_pembeli INT,
	nama_pembeli VARCHAR(50),
	email_pembeli VARCHAR(50),
	nomor_pembeli VARCHAR(12),
	username VARCHAR(20),
	password VARCHAR(20),
	saldo INT,
	PRIMARY KEY (id_pembeli)
);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (1, 'Lee Francescuccio', 'lfrancescuccio0@taobao.com', '854-296-8409', 'Lee', 'XamFUTec8z', 0);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (2, 'Ingamar Balfre', 'ibalfre1@bloglines.com', '642-631-8743', 'Ingamar', 'pY4WWu', 400000);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (3, 'Ethelred Rearden', 'erearden2@dedecms.com', '599-587-5224', 'Ethelred', 'aSVg8y9h', 300000);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (4, 'Allister Wavell', 'awavell3@diigo.com', '984-481-1617', 'Allister', 'gyMim6H', 900000);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (5, 'Geordie Lightfoot', 'glightfoot4@dmoz.org', '596-301-4784', 'Geordie', 'FxH7fmh', 100000);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (6, 'Humfrey Sawden', 'hsawden5@seattletimes.com', '933-136-3103', 'Humfrey', 'YyOGjGsr76y', 200000);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (7, 'Abbie Buncom', 'abuncom6@mysql.com', '266-942-8238', 'Abbie', '0FInqvr2YQ', 800000);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (8, 'Scott Giacobillo', 'sgiacobillo7@usatoday.com', '362-395-0832', 'Scott', 'whgPf3gc', 0);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (9, 'Fremont Boldock', 'fboldock8@wordpress.org', '503-788-8822', 'Fremont', 'CzMv9G', 600000);
insert into pembeli (id_pembeli, nama_pembeli, email_pembeli, nomor_pembeli, username, password, saldo) values (10, 'Ware Rother', 'wrother9@nytimes.com', '428-549-1393', 'Ware', 'EKBThu', 300000);


create table game (
	id_game INT,
	nama_game VARCHAR(50),
	PRIMARY KEY (id_game)
);
insert into game (id_game, nama_game) values (1, 'Valorant');
insert into game (id_game, nama_game) values (2, 'Dota 2');


create table admin (
	id_admin INT,
	nama_admin VARCHAR(50),
	email_admin VARCHAR(50),
	nomor_admin VARCHAR(12),
	username_admin VARCHAR(20),
	password_admin VARCHAR(20),
	PRIMARY KEY (id_admin)
);
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (1, 'Hew Jacobi', 'hjacobi0@purevolume.com', '579-522-7385', 'Hew', 'bE7ofgWK');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (2, 'Wittie Itzkovsky', 'witzkovsky1@unicef.org', '792-136-7506', 'Wittie', 'fwcoveT');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (3, 'Wendell Emes', 'wemes2@pagesperso-orange.fr', '257-704-6924', 'Wendell', 'NcU1yFOJ');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (4, 'Ulrich Ofer', 'uofer3@tinyurl.com', '387-915-3560', 'Ulrich', 'WuFOwcaz4');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (5, 'Gavan Pilbeam', 'gpilbeam4@omniture.com', '434-537-0704', 'Gavan', 'bdkgyuYdl0');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (6, 'Marc Gomery', 'mgomery5@fda.gov', '123-712-0900', 'Marc', 'B61bMTLRa');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (7, 'Sloan Crush', 'scrush6@symantec.com', '452-808-3618', 'Sloan', 'u82vC6KYs');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (8, 'Ignacius Clipsham', 'iclipsham7@sitemeter.com', '993-193-5839', 'Ignacius', 'qs9doi29Wxy');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (9, 'Isador Vasnev', 'ivasnev8@geocities.com', '835-866-6732', 'Isador', 'EbJnf08');
insert into admin (id_admin, nama_admin, email_admin, nomor_admin, username_admin, password_admin) values (10, 'Ade Prosser', 'aprosser9@goo.ne.jp', '792-946-9215', 'Ade', 'DuQaP3U6dg86');


create table item (
	id_item INT,
	harga_item INT,
	nama_item VARCHAR(50),
	stock_item INT,
	id_game INT,
	PRIMARY KEY (id_item),
	CONSTRAINT fk_idgame
   		FOREIGN KEY(id_game)
    	REFERENCES game(id_game)
);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (1, 40000, 'Colling', 65, 1);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (2, 70000, 'Edmund', 83, 1);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (3, 80000, 'Trewartha', 61, 1);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (4, 20000, 'Forsey', 9, 1);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (5, 10000, 'Rozet', 60, 1);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (6, 90000, 'Diem', 53, 2);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (7, 50000, 'Havik', 9, 2);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (8, 30000, 'Dumingos', 32, 2);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (9, 30000, 'Langfield', 80, 2);
insert into item (id_item, harga_item, nama_item, stock_item, id_game) values (10, 80000, 'Cowlard', 59, 2);


create table pesanan (
	id_pesanan INT,
	status_pesanan VARCHAR(20),
	tanggal_pesanan DATE,
	id_akun_game VARCHAR(20),
	total_pembayaran INT,
	metode_pembayaran VARCHAR(20),
	id_pembeli INT,
	id_item INT,
	PRIMARY KEY (id_pesanan),
	CONSTRAINT fk_idpembeli
   		FOREIGN KEY(id_pembeli)
    		REFERENCES pembeli(id_pembeli),
	CONSTRAINT fk_iditem
   		FOREIGN KEY(id_item)
    		REFERENCES item(id_item)

);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (1, 'Berhasil', '2022-04-16', '5136785527', 40000, 'saldo', 1, 1);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (2, 'Menunggu Pembayaran', '2021-08-29', '2606228863', 70000, 'saldo', 2, 2);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (3, 'Berhasil', '2022-03-11', '3399591462', 90000, 'saldo', 3, 3);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (4, 'Menunggu Pembayaran', '2021-11-15', '5408102491', 60000, 'saldo', 4, 4);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (5, 'Proses', '2021-10-28', '6886897896', 30000, 'saldo', 5, 5);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (6, 'Menunggu Pembayaran', '2022-03-17', '2324607298', 50000, 'bank', 6, 6);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (7, 'Berhasil', '2021-10-09', '3073594337', 70000, 'bank', 7, 7);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (8, 'Proses', '2022-04-04', '5887386134', 60000, 'bank', 8, 8);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (9, 'Proses', '2022-01-02', '0088220702', 30000, 'bank', 9, 9);
insert into pesanan (id_pesanan, status_pesanan, tanggal_pesanan, id_akun_game, total_pembayaran, metode_pembayaran, id_pembeli, id_item) values (10, 'Menunggu Pembayaran', '2021-09-20', '3683666099', 20000, 'bank', 10, 10);


create table pembaruan_item (
	id_pembaruan INT,
	tanggal_pembaruan DATE,
	id_admin INT,
	id_item INT,
	PRIMARY KEY (id_pembaruan),
	CONSTRAINT fk_idadmin
   		FOREIGN KEY(id_admin)
    		REFERENCES admin(id_admin),
	CONSTRAINT fk_iditem
   		FOREIGN KEY(id_item)
    		REFERENCES item(id_item)

);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (1, '2021-09-05', 1, 1);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (2, '2022-05-03', 2, 2);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (3, '2021-11-06', 3, 3);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (4, '2021-08-08', 4, 4);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (5, '2021-11-13', 5, 5);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (6, '2021-06-07', 6, 6);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (7, '2021-11-26', 7, 7);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (8, '2021-08-27', 8, 8);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (9, '2022-01-28', 9, 9);
insert into pembaruan_item (id_pembaruan, tanggal_pembaruan, id_admin, id_item) values (10, '2021-09-14', 10, 10);
