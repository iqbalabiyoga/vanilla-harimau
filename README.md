
# "Social Networks and Forums"
[![N|Solid](http://cdn4.wpguidance.com/wp-content/uploads/vanilla-forums.png)](https://nodesource.com/products/nsolid)
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
    
- Langkah instalasi Requirement awal dalam CLI.
    ```sh
    $ sudo apt install apache2
    $ sudo apt install mysql-server
    $ sudo apt install php
    $ sudo apt install libapache2-mod-php
    $ sudo apt install php-mysql
    $ sudo apt install php-gd php-mcrypt php-mbstring php-xml php-ssh2
    $ sudo service apache2 restart
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
![N|Solid](https://doc-0k-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/if33u7smf86o7ea4bebc2adr6lbe1ip0/1490443200000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXVlZiNlNyLXB2c0E?e=downloadd)

# Tampilan aplikasi web
```# Beberapa contoh tema yang terdapat pada vanila forum.``` 
[![N|Solid](https://doc-0s-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/79ov0p3gpord76ol863t57v9c0m59avu/1490443200000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXaV9TSVNKSG90NWc?e=download&nonce=q3iup9qft92ik&user=04966487297338461250&hash=vmh12ell18d76b94a0lngb5o914clnc7)](https://nodesource.com/products/nsolid)
![N|Solid](https://doc-04-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/3ahn59lodbb0cfh7sgla3uctfobuafqt/1490443200000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXaDRqWGp4eERLc3M?e=download)
untuk mendapatkan tema baru kita dapat mendownload tema pada menu Get More Themes
setelah mendownload
![N|Solid](https://doc-00-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/dplaogiltihulk2uvpjgu34og4qdltt7/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXTzNMNTN3ai1IV3c?e=download)

# Fungsi-fungsi utama User
![N|Solid](https://doc-14-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/ktfiak8outhtr9pt9q4itakrnelo27b2/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXc2lBMkdMcFRiSDQ?e=download)
- Fungsi-fungsi utama user pada Vanila Forum 
    1. Kita dapat membuat forum diskusi baru dengan judul bebas
![N|Solid](https://doc-0k-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/f1tgma2qcf5ra7qvcuqbt1m8tjv7cdea/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXR2FpTVMta0llbkk?e=download)
    2. Kita dapat berkirim pesan sesama pengguna forum 
    ![N|Solid](https://doc-0s-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/7qg4ld313u04v856gaabec0tb8ml72cj/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXTk5fZDdaRmxPMUU?e=download)
    3. Saling berkomentar pada suatu topik diskusi
    ![N|Solid](https://doc-08-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/atgit4pn510rsllk3kl15sffp2lmhvsl/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXTzByT2ZhYWZ1ZmM?e=download)
    4. Membuat status , berkomentar dan semua fungsi umum yang terdapat pada social media terdapat pula pada Vanila Forum
    ![N|Solid](https://doc-0k-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/1f9euunu5rjvqf5r3r5bckis7903968a/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXeTVMazhySVhFVWc?e=download)
 # Fungsi-fungsi utama ADMIN
![N|Solid](https://doc-00-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/vrdsvgt0em0tfqinm0invldv0a0h2p0p/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXVm5DVEg4dTdLcW8?e=download)
- Fungsi-fungsi ADMIN pada Vanila Forum sangatlah banyak . Seperti yang terdapat pada gambar diatas
beberapa diantaranya :
    1. Kita dapat menambahkan Banner Logo pada website
        ![N|Solid](https://doc-0s-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/abahe840kh10o1gu6rb1pau3er3u0gr2/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXNGpfN3ZySHhkZ0k?e=download)  
         ##### ``` Seperti ini hasilnya.```    
        ![N|Solid](https://doc-04-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/ojtovoejhv2cha4s72elun077rs8ov99/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXRlA3cHdsU1RXaTg?e=download)  
    2. Mengubah tema tampilan website
 ![N|Solid](https://doc-0s-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/qsu408q496dd0hm6r29j22musnnkvm83/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXLWFEZmJCWU02TUE?e=download)   
    3. Menambah dan Menghapus user
    ![N|Solid](https://doc-0k-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/jgkhb531ckmdku14dp4mkfot359h9jil/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXRzlZMHJ0UHZ0UWM?e=download) 
    4. Memberikan pesan, peringatan & informasi kepada user tertentu atau seluruh user
    ![N|Solid](https://doc-14-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/tcj17ptp4dg8h0cn9tpa2iq7p8p8r9h7/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXM3hFMEIteVFYVGc?e=download)
        ##### ``` Seperti ini hasilnya.``` 
        ![N|Solid](https://doc-0k-84-docs.googleusercontent.com/docs/securesc/fks9df3gf9ghbbmrf2hpqqkq44tiqo6e/m0hhnrml90ef2951ace4bdj3oufneoa2/1490450400000/04966487297338461250/04966487297338461250/0B9t3M8wMsdHXekFpNThDeDFoVzA?e=download)


## Pembahasan

- Pendapat anda tentang aplikasi web ini
	- pros: Aplikasi ini sangat menarik 
	- cons:
- Bandingkan dengan aplikasi web kelompok lain yang sejenis


## Referensi

Cantumkan tiap sumber informasi yang anda pakai.