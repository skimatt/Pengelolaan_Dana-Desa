
# Pengelolaan Dana Desa

## 📌 Deskripsi  
Sistem ini dirancang untuk mengelola dana desa secara efisien, mencatat pemasukan, pengeluaran, serta laporan keuangan desa menggunakan CodeIgniter 3.  

## 🛠️ Instalasi  

### 1️⃣ Clone Repository  
```bash
git clone https://github.com/user/pengelolaan-dana-desa.git
cd pengelolaan-dana-desa
```

### 2️⃣ Pindahkan ke Direktori **htdocs** (XAMPP)  
Letakkan folder proyek ke dalam `C:\xampp\htdocs\pengelolaan-dana-desa`  

### 3️⃣ Impor Database  
1. Buka **phpMyAdmin** melalui `http://localhost/phpmyadmin/`
2. Buat database baru dengan nama **db_danadesa**
3. Klik **Import** dan pilih file `db_danadesa.sql`
4. Klik **Go**

### 4️⃣ Konfigurasi Database  
Edit file `application/config/database.php` dan sesuaikan koneksi database:  
```php
$active_group = 'default';
$query_builder = TRUE;

$db['default'] = array(
    'dsn'	=> '',
    'hostname' => 'localhost',
    'username' => 'root', // Sesuaikan jika berbeda
    'password' => '', // Sesuaikan jika berbeda
    'database' => 'db_danadesa',
    'dbdriver' => 'mysqli',
    'dbprefix' => '',
    'pconnect' => FALSE,
    'db_debug' => (ENVIRONMENT !== 'production'),
    'cache_on' => FALSE,
    'cachedir' => '',
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
    'swap_pre' => '',
    'encrypt' => FALSE,
    'compress' => FALSE,
    'stricton' => FALSE,
    'failover' => array(),
    'save_queries' => TRUE
);
```

### 5️⃣ Konfigurasi Base URL  
Edit `application/config/config.php` pada baris berikut:  
```php
$config['base_url'] = 'http://localhost/pengelolaan-dana-desa/';
```

### 6️⃣ Jalankan di Browser  
Buka browser dan akses:  
```
http://localhost/pengelolaan-dana-desa/
```

## 🚀 Fitur  
✅ Manajemen Pemasukan Dana  
✅ Manajemen Pengeluaran Dana  
✅ Laporan Keuangan Desa  
✅ Hak Akses (Admin & Pengguna)  

## 🤝 Kontribusi  
Jika ingin berkontribusi, silakan buat pull request atau fork repository ini.  

## 📄 Lisensi  
MIT License  

