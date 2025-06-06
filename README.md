# E-Commerce Transaction Data Analysis & Insights

## Deskripsi Proyek
Proyek ini melakukan analisis data transaksi pada sebuah platform e-commerce menggunakan data terstruktur SQL. Data dummy berisi 50 transaksi dengan atribut seperti tanggal transaksi, pelanggan, produk, kategori produk, jumlah pembelian, harga, metode pembayaran, dan status pesanan.

Analisis yang dilakukan meliputi:
- Statistik deskriptif dasar (total transaksi, pendapatan, pelanggan unik)
- Distribusi transaksi berdasarkan kategori produk, metode pembayaran, dan status order
- Tren penjualan harian dan transaksi per kategori
- Analisis perilaku pelanggan (frekuensi transaksi dan total pembelian)
- Produk terlaris dan produk dengan tingkat pengembalian tinggi
- Analisis metode pembayaran dan status order
- Perhitungan nilai pelanggan (Customer Lifetime Value) secara sederhana

## Struktur Tabel `transactions`

| Kolom            | Tipe Data         | Keterangan                            |
|------------------|-------------------|-------------------------------------|
| transaction_id   | INT (Primary Key) | ID unik transaksi                    |
| transaction_date | DATE              | Tanggal transaksi                    |
| customer_id      | INT               | ID pelanggan                        |
| product_id       | INT               | ID produk                          |
| product_category | VARCHAR(50)       | Kategori produk                     |
| quantity         | INT               | Jumlah produk yang dibeli           |
| price            | DECIMAL(10,2)     | Harga per unit produk                |
| total_amount     | DECIMAL(10,2)     | Total harga (quantity * price)      |
| payment_method   | VARCHAR(20)       | Metode pembayaran (Credit Card, Gopay, dll) |
| order_status     | VARCHAR(20)       | Status pesanan (Completed, Pending, Cancelled, Returned) |

## Contoh Data Dummy (Sample 10 baris)

| transaction_id | transaction_date | customer_id | product_id | product_category | quantity | price  | total_amount | payment_method | order_status |
|----------------|------------------|-------------|------------|------------------|----------|--------|--------------|----------------|--------------|
| 1              | 2025-06-01       | 101         | 2001       | Electronics      | 2        | 150.00 | 300.00       | Credit Card    | Completed    |
| 2              | 2025-06-01       | 102         | 2002       | Electronics      | 1        | 500.00 | 500.00       | Gopay          | Completed    |
| 3              | 2025-06-02       | 103         | 3001       | Fashion          | 3        | 100.00 | 300.00       | ShopeePay      | Pending      |
| 4              | 2025-06-02       | 104         | 3002       | Fashion          | 1        | 800.00 | 800.00       | Credit Card    | Completed    |
| 5              | 2025-06-03       | 105         | 4001       | Home & Living    | 1        | 650.00 | 650.00       | Transfer Bank  | Completed    |
| 6              | 2025-06-03       | 106         | 5001       | Sports           | 2        | 250.00 | 500.00       | Gopay          | Returned     |
| 7              | 2025-06-04       | 107         | 6001       | Beauty           | 4        | 75.00  | 300.00       | ShopeePay      | Completed    |
| 8              | 2025-06-04       | 108         | 7001       | Books            | 1        | 200.00 | 200.00       | Credit Card    | Completed    |
| 9              | 2025-06-05       | 109         | 2003       | Electronics      | 1        | 1200.00| 1200.00      | Transfer Bank  | Pending      |
| 10             | 2025-06-05       | 110         | 3003       | Fashion          | 2        | 400.00 | 800.00       | COD            | Cancelled    |

## SQL Query Analisis

Berikut adalah beberapa contoh query SQL yang dapat digunakan untuk menganalisis data transaksi:

```sql
-- Contoh query ada di file /queries.sql atau lihat dokumentasi SQL di repo ini
