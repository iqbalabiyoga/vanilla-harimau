##### ```Nama : Iqbal Abiyoga | G64140014```
##### ```Nama : Airlangga Visnhu Murthi | G64140105```
##### ```Nama : Dony Rahmad Agung S | G641400```
##### ```Nama : M Nur Al Ghazali | G641400```


# "Social Networks and Forums"
![N|Solid](http://i.imgur.com/UtVVCNS.png)
## Sekilas Tentang
Vanilla Forum adalah perangkat lunak bebas, standar-compliant, customizable discussion forums.Vanilla dikembangkan dengan menggunakan bahasa PHP dan menggunakan Framework Garden.Vanila forum memudahkan seseorang untuk membuat forum sesuai dengan keinginannya sendiri. [Lihat Video Vanilla Forum](https://www.youtube.com/watch?v=ucO5iSV-paw)
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
    mysql > GRANT all ON [database name].* TO [database username]@localhost IDENTIFIED BY '[database user password]';
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
    3. (ex. You put Vanilla in /forum so change the next line to: RewriteBase /forum) RewriteBase /
   
## Konfigurasi (opsional) 

Adapun konfigurasi pada vanilla forums yang diperlukan untuk meningkatkan fungsi dan kinerjanya adalah : 
- Limit Size dari upload suatu file, contoh limit size pada upload foto profil hanya disediakan sebesar 2mb. 
- Change Name tidak disediakan pada Vanilla Forums ini 
- Penambahan media social hanya tersedia dengan google+, sedangkan social lainnya belum tersedia 

Plugin untuk fungsi tambahan 
- Maintenance Mode 
- Plugin lain yang telah didukung 


## Maintenance (opsional) 

Cara untuk maintenance pada Vanilla Forums yaitu,
- Menggunakan fitur Plugin yang tersedia. Saat maintenance hanya area bagian dashboard yang bisa digunakan 
- Sedangkan untuk menormalkan situs kesedia kala maka harus mematikan plugin maintenance modenya 
- Untuk memasukkan gambar pada saat maintenance bisa dengan meletakkan image dengan nama "maintenance.png", lalu masukkan ke Plugin's /image/ folder. 
- Untuk memberi informasi lain terkait maintenance dengan edit text yaitu edit the matching "locale" file yang berada didalam direktori Plugin's


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
    EX : User dengan nama *rangga_harimau* berkirim pesan ke user lain bernama *iqbalabiyoga*
    ![N|Solid](http://i.imgur.com/d8sbhM9.png)
    ![N|Solid](http://i.imgur.com/A9UMb5e.png)
    ![N|Solid](http://i.imgur.com/jcvL76r.png)  
    3. Saling berkomentar pada suatu topik diskusi
    Ex: user *rangga_harimau* membuat topik diskusi dengan judul **"jadi nih"** dan user lain berkomentar pada diskusi tersebut
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
 - Pro :
     * Costumize Forms : Tidak semua situs web yang sama, dan forum harus seperti itu juga. Vanilla Forum memungkinkan Anda menyesuaikan forum Anda agar sesuai dengan tema website Anda atau skema warna. Anda dapat memilih salah satu dari tema membuat profesional yang diberikan oleh Vanilla Forum atau Anda dapat menyesuaikan sendiri. Pilih dari font yang berbeda, warna dan layout untuk menggunakan sesuai desain website Anda atau merek Anda. Dengan Vanilla Forum, Anda mendikte bagaimana forum akan terlihat dan tidak terbatas hanya beberapa pilihan kustomisasi.
     * Social Media Integration : Mendapatkan volume tinggi lalu lintas internet penting untuk situs web apapun, itulah sebabnya Vanilla Forum membantu Anda memviralkan/ mempublikasikan forum Anda dengan bantuan sosial Media. Anda dapat berbagi konten dari forum Anda ke situs media sosial seperti Facebook, Twitter dan Google+ mengekspos merek Anda ke lebih banyak orang. Pengunjung Anda juga dapat berbagi konten dan konten seperti di klik tombol. Mereka juga dapat mendaftar hanya dengan login dengan akun media sosial mereka, mengurangi kompleksnya cara untuk mendaftar akun dan mendorong mereka untuk dengan mudah bergabung.
     * Free Trial : Meskipun Vanilla Forum datang dengan label harga yang lumayan. Vanilla Forum memberikan layanan percobaan gratis 30 hari dan demo. Dengan cara ini Anda dapat mencoba layanan Vanilla Forum sebelum membuat komitmen membayar.
 - Cons : 
     * Expensive : Seperti yang telah kami sebutkan sebelumnya, Vanilla Forum datang dengan label harga yang lebih mahal dengan rencana versi Starter mereka di $ 99/ bulan dan rencana VIP paling mahal mencapai angka $ 3.499/ bulan. Rencana Starter mereka tampaknya minimal dibandingkan dengan VIP tapi masih mahal jika dibandingkan dengan produk sejenis lainnya di pasar. Hal ini dapat membuat usaha kecil menghindari Vanilla Forum dan mencari alternatif yang lebih murah.
     * No Live Chat : Layanan ini selalu menjadi pilihan sebagai sarana pendukung pelanggan seperti yang Anda sering butuhkan ketika Anda menghadapi masalah dengan perangkat lunak, sehingga akan lebih baik untuk mendapatkan dukungan saat itu juga. Dengan live chat Anda tidak perlu meninggalkan komputer Anda atau menunggu hari untuk mendapatkan balasan atas perhatian Anda. Meskipun Vanilla Forum menyediakan berbagai cara untuk memberikan dukungan pelanggan, ini tidak termasuk opsi apapun untuk live chat.
     
- Bandingkan dengan aplikasi web kelompok lain yang sejenis
    * ???


## Referensi

- Install Vanilla Forums on Ubuntu 16.04 | https://www.1and1.co.uk/cloud-community/learn/application/misc/install-vanilla-forums-on-ubuntu-1604/
- PHPmyadmin Documentation | https://help.ubuntu.com/lts/serverguide/phpmyadmin.html
- Vanilla Forums Open Source Theme | https://open.vanillaforums.com/addon/browse/themes/
- Vanilla Forums Help | https://open.vanillaforums.com/discussion/12702/could
