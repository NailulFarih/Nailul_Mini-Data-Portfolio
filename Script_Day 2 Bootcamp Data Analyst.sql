/*use dqlabmartbasic*/
select * from ms_pelanggan_dqlab mpd;
select kode_produk from ms_produk_dqlab mpd;

select ms_pelanggan_dqlab.kode_pelanggan from ms_pelanggan_dqlab;

select mpd.nama_produk, mpd.harga from ms_produk_dqlab as mpd;

select mpd.nama_pelanggan nama_customer, alamat alamat_customer from ms_pelanggan_dqlab mpd;


/*day 3
 use dqlabmartbasic
 */

select * from tr_penjualan_dqlab order by harga,qty;

select * from tr_penjualan_dqlab order by qty,tgl_transaksi;

select * from ms_pelanggan_dqlab order by nama_pelanggan;

select * from ms_pelanggan_dqlab mpd order by alamat;  

select * from tr_penjualan_dqlab order by qty,harga,nama_produk  desc; 

select kode_urut_transaksi, kode_produk, qty, harga, nama_produk from tr_penjualan_dqlab order by harga desc

/*praktek mandiri day 3 - II*/
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;
select * from ms_pelanggan_dqlab order by alamat desc;

/*praktek mandiri day 3 - III*/
select harga,qty,(harga*qty)-(diskon_persen/100*harga*qty)  as total_price,nama_produk, diskon_persen  from tr_penjualan_dqlab order by total_price desc;











