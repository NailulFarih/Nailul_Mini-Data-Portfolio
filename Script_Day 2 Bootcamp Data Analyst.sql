use dqlabmartbasic;

/*case 1*/
select mpd.nama_pelanggan nama_customer, alamat alamat_customer from ms_pelanggan_dqlab mpd;

/*case 2*/
select mpd.nama_produk, mpd.harga from ms_produk_dqlab as mpd;

/*CASE 3*/
select * from ms_produk_dqlab where nama_produk = 'Flashdisk DQLab 32 GB' having harga >15000;

/*CASE 4*/
select * from ms_produk_dqlab where nama_produk = 'Flashdisk DQLab 64 GB' or  nama_produk = 'Tas Travel Organizer DigiSkills.id' or  nama_produk = 'Gantungan Kunci DQLab' order by harga desc;

/*CASE 5*/
select * from ms_produk_dqlab where harga <50000;

/*CASE 6*/
select kode_pelanggan, nama_produk, qty, harga, (harga*qty) as total_harga from tr_penjualan_dqlab having total_harga >=200000 order by total_harga desc;

/*CASE 7*/
select kode_pelanggan, sum(qty) as total_qty, harga as total_harga, qty%3 as sisa_quantity from tr_penjualan_dqlab group by kode_pelanggan;

/*CASE 8*/
select kode_transaksi, tgl_transaksi, nama_produk, concat(kode_produk, nama_produk) as kode_produk_nama_produk from tr_penjualan_dqlab where qty = 5;














