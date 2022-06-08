==ganti status proses -> berhasil
=====================procedure=================
create procedure chstat()
language 'plpgsql'
as $$
begin
	update pesanan
	set status_pesanan = 'Berhasil'
	where status_pesanan = 'Proses';
end;
$$

call chstat();



==update saldo saat melakukan pesanan
=====================trigger====================
create function updateSaldo()
returns trigger
language 'plpgsql'
as $$
begin
      update pembeli
      set saldo = saldo - tuku.bayar
      from (select total_pembayaran as bayar
           	from pesanan
            where id_pembeli = new.id_pembeli) as tuku
	  where id_pembeli = new.id_pembeli;
      return null;
end;
$$;

create trigger updateSaldo 
after insert on pesanan 
for each row 
execute procedure updateSaldo();

===============================================

create or replace function updateStock()
returns trigger
language 'plpgsql'
as $$
begin
      update item
      set stock = stock - 1
      from (select status_pesanan
           	from pesanan
            where status_pesanan = 'Berhasil') as beli
	where id_item = new.id_item;
      return null;
end;
$$;

create trigger updateStock 
after insert on pesanan 
for each row 
execute procedure updateStock();

============================================

create or replace function itemInsert()
returns trigger
language 'plpgsql'
as $$
begin
	insert into pembaruan_item
		(id_pembaruan, tanggal_pembaruan, id_admin, id_item)
	values
		(nextval('pembaruanseq'), now(), 1, new.id_item);
	return null;
end;
$$;

create or replace trigger item_insert 
after insert or update or delete on item
for each row 
execute procedure itemInsert();


========================view============================
create view report as
select pembeli.nama_pembeli, pesanan.status_pesanan, pesanan.tanggal_pesanan, pesanan.id_akun_game, item.nama_item, pesanan.metode_pembayaran, pesanan.total_pembayaran
from pesanan
left join item
on pesanan.id_item = item.id_item
left join pembeli
on pesanan.id_pembeli = pembeli.id_pembeli;



=================agregate======================

total item valorant yang dibeli
======================
select count(pesanan.id_pembeli) as jumlah
from pesanan
where pesanan.id_item = 1;

banyaknya item yang dibeli pada game valorant
=======================
select item.nama_item, count(pesanan.id_item) as jumlah
from pesanan
left join item
on pesanan.id_item = item.id_item
group by item.nama_item, pesanan.id_item
having pesanan.id_item = 1;




==========nested================

==yg paling banyak beli
==========================
select pembeli.nama_pembeli
from pembeli
where pembeli.id_pembeli in (
	select pesanan.id_pembeli
	from pesanan
	group by pesanan.id_pembeli
	having count(*) >= all( select count(id_pembeli) 
					from pesanan p
					group by p.id_pembeli)
);


==yang beli game valorant
===================
select pembeli.nama_pembeli
from pembeli
where pembeli.id_pembeli in (
	select pesanan.id_pembeli
	from pesanan
	where pesanan.id_item = 1
);




=====================sequence=================
create sequence pembeliseq
increment by 1
minvalue 1
maxvalue 1000
start with 11
owned by pembeli.id_pembeli;

create sequence gameseq
increment by 1
minvalue 1
maxvalue 1000
start with 11
owned by game.id_game;

create sequence adminseq
increment by 1
minvalue 1
maxvalue 1000
start with 11
owned by admin.id_admin;

create sequence itemseq
increment by 1
minvalue 1
maxvalue 1000
start with 11
owned by item.id_item;

create sequence pesananseq
increment by 1
minvalue 1
maxvalue 1000
start with 11
owned by pesanan.id_pesanan;

create sequence pembaruanseq
increment by 1
minvalue 1
maxvalue 1000
start with 11
owned by pembaruan_item.id_pembaruan;


================================
--Item Game yang paling banyak dibeli
SELECT Game.nama_game
FROM
	Game INNER JOIN (
		SELECT id_game
		FROM item
		GROUP BY(id_game)
		ORDER BY COUNT(id_game) DESC
		LIMIT 1
	) AS Most_Order
	ON game.id_game=Most_Order.id_game

-- Banyak pesanan tiap pembeli
SELECT Pembeli.nama_pembeli, Ngroup.banyak_belian
FROM
	Pembeli INNER JOIN (
		SELECT id_pembeli , COUNT(id_pembeli) AS banyak_belian
		FROM Pesanan
		GROUP BY id_Pembeli
	) AS Ngroup
	ON Pembeli.id_pembeli=Ngroup.id_pembeli
ORDER BY Ngroup.banyak_belian
