-- 1. Analisis Deskriptif Dasar

-- a. Total transaksi, total pendapatan, rata-rata transaksi, jumlah pelanggan unik
SELECT 
    COUNT(*) AS total_transaksi,
    SUM(total_amount) AS total_pendapatan,
    AVG(total_amount) AS rata_rata_transaksi,
    COUNT(DISTINCT customer_id) AS jumlah_pelanggan_unik
FROM transactions;

-- b. Distribusi transaksi per kategori produk
SELECT product_category, COUNT(*) AS jumlah_transaksi
FROM transactions
GROUP BY product_category
ORDER BY jumlah_transaksi DESC;

-- c. Distribusi metode pembayaran
SELECT payment_method, COUNT(*) AS jumlah_transaksi
FROM transactions
GROUP BY payment_method
ORDER BY jumlah_transaksi DESC;

-- d. Distribusi status order
SELECT order_status, COUNT(*) AS jumlah_order
FROM transactions
GROUP BY order_status
ORDER BY jumlah_order DESC;


-- 2. Analisis Tren Waktu

-- a. Total pendapatan per hari
SELECT transaction_date, SUM(total_amount) AS total_pendapatan
FROM transactions
GROUP BY transaction_date
ORDER BY transaction_date;

-- b. Jumlah transaksi per kategori per hari
SELECT transaction_date, product_category, COUNT(*) AS jumlah_transaksi
FROM transactions
GROUP BY transaction_date, product_category
ORDER BY transaction_date, product_category;


-- 3. Analisis Pelanggan

-- a. Pelanggan dengan transaksi terbanyak
SELECT customer_id, COUNT(*) AS jumlah_transaksi
FROM transactions
GROUP BY customer_id
ORDER BY jumlah_transaksi DESC
LIMIT 10;

-- b. Pelanggan dengan total pembelian terbesar
SELECT customer_id, SUM(total_amount) AS total_belanja
FROM transactions
GROUP BY customer_id
ORDER BY total_belanja DESC
LIMIT 10;


-- 4. Analisis Produk dan Kategori

-- a. Produk terlaris berdasarkan volume (quantity)
SELECT product_id, product_category, SUM(quantity) AS total_quantity
FROM transactions
GROUP BY product_id, product_category
ORDER BY total_quantity DESC
LIMIT 10;

-- b. Produk dengan pengembalian tertinggi (order_status = 'Returned')
SELECT product_id, product_category, COUNT(*) AS jumlah_returned
FROM transactions
WHERE order_status = 'Returned'
GROUP BY product_id, product_category
ORDER BY jumlah_returned DESC
LIMIT 10;


-- 5. Analisis Metode Pembayaran

-- a. Jumlah transaksi per metode pembayaran
SELECT payment_method, COUNT(*) AS jumlah_transaksi
FROM transactions
GROUP BY payment_method
ORDER BY jumlah_transaksi DESC;

-- b. Status order per metode pembayaran
SELECT payment_method, order_status, COUNT(*) AS jumlah
FROM transactions
GROUP BY payment_method, order_status
ORDER BY payment_method, order_status;


-- 6. Analisis Status Order

-- a. Proporsi status order (jumlah dan persentase)
SELECT order_status, 
       COUNT(*) AS jumlah_order,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM transactions), 2) AS persen_order
FROM transactions
GROUP BY order_status
ORDER BY jumlah_order DESC;


-- 7. Customer Lifetime Value (CLV) Sederhana

-- Total nilai pembelian per pelanggan
SELECT customer_id, SUM(total_amount) AS lifetime_value
FROM transactions
GROUP BY customer_id
ORDER BY lifetime_value DESC;
