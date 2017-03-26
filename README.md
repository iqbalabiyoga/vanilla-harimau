# "Social Networks and Forums"
![N|Solid](http://i.imgur.com/UtVVCNS.png)
## Sekilas Tentang
Vanilla Forum adalah perangkat lunak bebas, standar-compliant, customizable discussion forums.Vanilla dikembangkan dengan menggunakan bahasa PHP dan menggunakan Framework Garden.Vanila forum memudahkan seseorang untuk membuat forum sesuai dengan keinginannya sendiri.
## Instalasi
- Requirement awal pada instalas Forum sama seperti pada proses intalasi Wordpress pada praktikum 1 berikut requirement yang diperlukan :

    | No. | Yang Harus diinstal |
    | ------ | ------ |
    | 1 | apache2|
    | 2 | mysql-server |
    | 3 | php |
    | 4 | libapache2-mod-php |
    | 5 | php-mysql |
    | 6 | php-gd php-mcrypt php-mbstring php-xml php-ssh2 |
    | 7 | php-curl |
    | 8 | unzip |
    
- Langkah instalasi Requirement awal dalam CLI.
    ```sh
    $ sudo apt install apache2
    $ sudo apt install mysql-server
    $ sudo apt install php
    $ sudo apt install libapache2-mod-php
    $ sudo apt install php-mysql
    $ sudo apt install php-gd php-mcrypt php-mbstring php-xml php-ssh2
    $ sudo service apache2 restart
    $ sudo apt-get install php-curl
    $ sudo apt-get unzip
    ```
- Langkah instalasi Vanila Forums dalam CLI.
     # Mengaktifkan mod_rewrite
    ```sh
    $ sudo a2enmod rewrite #mengaktifkan modul rewrite
    $ /etc/apache2/sites-available/[your domain name].conf 
      AllowOverride All
      Order allow,deny
      Allow from all
    $ sudo service apache2 restart
    ```
    # Membuat Database
    ```sh
    $ sudo mysql –u root –p
    mysql > CREATE DATABASE [database name];
    mysql > CREATE DATABASE my_vanilla_forums;
    mysql > GRANT all ON [database name].* TO [database username]@localhost             IDENTIFIED BY '[database user password]';
    ```
    Replace [database name], [database username], [database user password] sesuai dengan keinginan . contoh : username= *RanggaTampan* , password= *rangga123* , database='[my_vanilla_forums]'
    ```sh 
    GRANT ALL ON my_vanilla_forums.* TO RanggaTampan@localhost 
    IDENTIFIED BY'rangga123';
    mysql quit; #keluar dari database
    ```
    # Install Vanilla Forums
    ```sh
    $ sudo mysql –u root –p
    $ sudo apt-get update
    $ sudo apt-get install unzip
    ```
    # Download dan Unzip Software
    ```sh
    $ cd /var/www/example.com/html
    $ sudo mkdir /var/www/example.com/html/forums
    $ cd /var/www/example.com/html/forums
    $ sudo wget [Download URL] #Download Vanilla Forum di directory ini
    $ sudo unzip J48X62QECRY1.zip #Unzip file yang telah di download
    $ sudo chmod -R 777 conf/ uploads/ cache/ #Set permission untuk conf,upload,cache
    $
    ```
    # Edit .htaccess File
    ```sh
    $ sudo nano .htaccess
     ```
    1. Certain hosts may require the following line.
    2. If vanilla is in a subfolder then you need to specify it after the /.
    3. (ex. You put Vanilla in /forum so change the next line to: RewriteBase /forum)  RewriteBase /
   
## Konfigurasi (opsional)

Setting tambahan yang diperlukan untuk meningkatkan fungsi dan kinerja aplikasi, misalnya:
- batas upload file
- batas memori
- etc.

Plugin untuk fungsi tambahan
- single log-on
- etc.


##  Maintenance (opsional)

Setting tambahan untuk maintenance secara periodik, misalnya:
- hapus tmp sehari sekali
- buat backup seminggu sekali
- etc.


## Otomatisasi

Skrip shell untuk otomatisasi instalasi, konfigurasi, dan maintenance.


## Cara Pemakaian
Tampilan atau Halaman awal pada Vanila Forum dapat di pilih sesuai dengan keinginan seperti customize theme pada blog. Pada Vanila Forum tema pada forum dapat di ganti pada menu Appearance >Themes hanya jika login sebagai admin
![N|Solid](http://i.imgur.com/L83B85K.png)

# Tampilan aplikasi web
```# Beberapa contoh tema yang terdapat pada vanila forum.``` 
![N|Solid](http://i.imgur.com/uklL1L3.png)
![N|Solid](http://i.imgur.com/oPYQonb.png)
![N|Solid](http://i.imgur.com/g248wbY.png)

### Langkah-langkah untuk mengganti tema pada virtual server Vanila Forum
1. untuk mendapatkan tema baru kita dapat mendownload tema pada menu **Get More Themes**
![N|Solid](http://i.imgur.com/9E9ifoc.png)
2. Setelah itu lakukan download dengan command wget di dalam folder **"/var/www/html/vanilla/themes"** => unzip file 
![N|Solid](http://i.imgur.com/ulCWlkU.png)
3. Setelah 2 langkah diatas dilakukan barulah tema yang kita download dapat kita gunakan di virtual sever Vanila Forum yang kita buat. Berikut beberapa tema yang telah tim harimau download.
![N|Solid](http://i.imgur.com/Se4kXVw.png)

# Fungsi-fungsi utama User
- Fungsi-fungsi utama user pada Vanila Forum 
    1. Kita dapat membuat forum diskusi baru dengan judul bebas
    ![N|Solid](http://i.imgur.com/M9SXvLo.png)
    2. Kita dapat berkirim pesan sesama pengguna forum 
    EX : User dengan nama *rangga_harimau* berkirim pesan ke user lain bernama         *iqbalabiyoga*
    ![N|Solid](http://i.imgur.com/d8sbhM9.png)
    ![N|Solid](http://i.imgur.com/A9UMb5e.png)
    ![N|Solid](http://i.imgur.com/jcvL76r.png)  
    3. Saling berkomentar pada suatu topik diskusi
    Ex: user *rangga_harimau* membuat topik diskusi dengan judul **"jadi nih"** dan     user lain berkomentar pada diskusi tersebut
    ![N|Solid](http://i.imgur.com/UdbOYYm.png)
    4. Membuat status , berkomentar dan semua fungsi umum yang terdapat pada social media terdapat pula pada Vanila Forum
    ![N|Solid](http://i.imgur.com/xno39vs.png)
 # Fungsi-fungsi utama Admin
![N|Solid](http://i.imgur.com/BcKxkqb.png)

- Fungsi-fungsi ADMIN pada Vanila Forum sangatlah banyak . Seperti yang terdapat pada gambar diatas
beberapa diantaranya :
    1. Kita dapat menambahkan Banner Logo pada website
        ![N|Solid](http://i.imgur.com/3JUO9SE.png)  
         ##### ``` Seperti ini hasilnya.```    
        ![N|Solid](http://i.imgur.com/s4SyCFM.png)  
    2. Mengubah tema tampilan website
 ![N|Solid](http://i.imgur.com/Se4kXVw.png)   
    3. Menambah dan Menghapus user
    ![N|Solid](http://i.imgur.com/9bE4l9Q.png) 
    4. Memberikan pesan, peringatan & informasi kepada user tertentu atau seluruh user
    ![N|Solid](http://i.imgur.com/kUg4u0R.png)
        ##### ``` Seperti ini hasilnya.``` 
        ![N|Solid](http://i.imgur.com/g248wbY.png)


## Pembahasan

- Pendapat anda tentang aplikasi web ini
	- pros: Aplikasi ini sangat menarik 
	- cons:
- Bandingkan dengan aplikasi web kelompok lain yang sejenis


## Referensi

- Install Vanilla Forums on Ubuntu 16.04 | https://www.1and1.co.uk/cloud-community/learn/application/misc/install-vanilla-forums-on-ubuntu-1604/
- PHPmyadmin Documentation | https://help.ubuntu.com/lts/serverguide/phpmyadmin.html
- Vanilla Forums Open Source Theme | https://open.vanillaforums.com/addon/browse/themes/
- Vanilla Forums Help | https://open.vanillaforums.com/discussion/12702/could-not-instantiate-mail-function
- PHP Curl Instalation | http://stackoverflow.com/questions/33775897/how-do-i-install-the-ext-curl-extension-with-php-7
