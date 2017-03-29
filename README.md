##### ```Tim Harimau:```
##### ```1. Iqbal Abiyoga | G64140014```
##### ```2. Airlangga Visnhu Murthi | G64140105```
##### ```3. Dony Rahmad Agung S | G64140007```
##### ```4. M Nur Al Ghazali | G64140038```


# "Social Networks and Forums"
![N|Solid](http://i.imgur.com/UtVVCNS.png)
## Sekilas Tentang
Vanilla Forum adalah perangkat lunak bebas, standar-compliant, customizable discussion forums.Vanilla dikembangkan dengan menggunakan bahasa PHP dan menggunakan Framework Garden.Vanila forum memudahkan seseorang untuk membuat forum sesuai dengan keinginannya sendiri. [Lihat Video Vanilla Forum](https://www.youtube.com/watch?v=ucO5iSV-paw)
## Instalasi
- Requirement awal pada instalasi Vanilla Forum mirip seperti pada proses intalasi Wordpress pada praktikum 1 berikut requirement yang diperlukan :

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
    | 9 | phpmyadmin (opsional)|
    
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
    $ sudo apt install phpmyadmin
    ```
- Langkah instalasi Vanila Forums dalam CLI.
     # Mengaktifkan mod_rewrite
    ```sh
    $ sudo a2enmod rewrite #mengaktifkan modul rewrite
    $ sudo nano etc/apache2/apache2.conf 
      AllowOverride All
      Order allow,deny
      Allow from all
    $ sudo service apache2 restart
    ```
    # Membuat Database
    ```sh
    $ sudo mysql –u root –p
    mysql > CREATE DATABASE vanilla_forum;
    mysql > GRANT ALL ON vanilla_forum.* TO harimau@localhost 
    IDENTIFIED BY'harimauasoy1234';
    mysql quit;              #keluar dari perintah mysql database
    ```

    ## Download, Unzip, dan Install Paket Vanilla Forums Core
    ```sh
    $ cd /var/www/example.com/html
    $ sudo mkdir /var/www/example.com/html/vanilla
    $ cd /var/www/example.com/html/vanilla
    $ sudo wget https://open.vanillaforums.com/get/vanilla-core-2.3.zip 
    $ sudo unzip vanilla-core-2.3.zip  
    $ sudo chmod -R 777 conf/ uploads/ cache/
    ```
    # Edit .htaccess File
    ```sh
    $ sudo nano .htaccess
     ```
   Edit bagian **RewriteBase /** menjadi **RewriteBase/vanilla**
   
    ## Konfigurasi (opsional) 
    ##### Manajemen Basis Data dengan PHPMyAdmin
      $ sudo ln -s /etc/phpmyadmin/apache.conf 
      /etc/apache2/conf-available/phpmyadmin.conf
      $ sudo a2enconf phpmyadmin.conf
      $ sudo systemctl reload apache2.service
    
    **akses ke host : 172.18.88.73/phpmyadmin**
    ![N|Solid](http://i.imgur.com/y8d09a1.png)

    ## Maintenance (opsional) 

    **Dashboard Area**  : Seorang user dengan level Administrator disediakan sebuah dashboard yang cukup lengkap untuk mengelola tampilan web, memasang plugin, dan banyak fungsi *administrative* lainnya  

    ## Otomatisasi
    **bin.sh**
     ```
    $ sudo apt install apache2
    $ sudo apt install mysql-server
    $ sudo apt install php
    $ sudo apt install libapache2-mod-php
    $ sudo apt install php-mysql
    $ sudo apt install php-gd php-mcrypt php-mbstring php-xml php-ssh2
    $ sudo service apache2 restart
    $ sudo apt-get install php-curl
    $ sudo apt-get unzip
    $ sudo a2enmod rewrite #mengaktifkan modul rewrite
    $ sudo nano etc/apache2/apache2.conf 
        AllowOverride All
        Order allow,deny
        Allow from all
    $ sudo service apache2 restart
    $ sudo mysql –u root –p
        mysql > CREATE DATABASE vanilla_forums;
        mysql > GRANT ALL ON my_vanilla_forums.* TO username@localhost 
        IDENTIFIED BY'password';
        mysql quit;         
  ```
    ## Penyelesaian Instalasi
    ![N|Solid](http://i.imgur.com/F8wwMo8.png)
    ![N|Solid](http://i.imgur.com/0M7cnQ7.png)
    
    ## Konfigurasi Mailer SMTP
    ![N|Solid](http://i.imgur.com/rIklMGe.png)
    ## Konfigurasi Key Recaptcha
    ![N|Solid](http://i.imgur.com/mM3JpGk.png)
    ![N|Solid](http://i.imgur.com/Toe6oMW.png)
    ## Cara Pemakaian
    Tampilan atau Halaman awal pada Vanila Forum dapat di pilih sesuai dengan keinginan seperti customize theme pada blog. Pada Vanila Forum tema pada forum dapat di ganti pada menu Appearance >Themes hanya jika login sebagai admin
![N|Solid](http://i.imgur.com/L83B85K.png)

    ## Tampilan aplikasi web (Default)
![N|Solid](http://i.imgur.com/uklL1L3.png)

### Menginstal Tema
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
	- Pros :
	    * Kaya akan Plugin : Vanilla Forum memang dibuat menjadi forum yang ringan namun menarik, salah satu yang membuat menarik yakni dari kekuatan pluginnya. Para penggunanya bebas menkostumisasi forumnya dengan plugin-plugin yang ada untuk memenuhi kebutuhan pekerjaan mereka. Selain itu pilihan temanya pun juga cukup banyak, sehingga tampilannya dapat dibuat sesuai keinginan.
	    	    ![N|Solid](http://i.imgur.com/rOsCNG6.png)
	    *  Ringan & Easy to Acces : Aplikasi ini diatur sedemikian hingga sehingga penggunanya mudah untuk mengakses forum tersebut. Jadi orang awam yang baru pertama kali memakai aplikasi ini pun akan dengan mudah mempelajarnya.
	    * Share to Social Media : Kelebihan dari Vanilla Forum lainnya yakni memberikan kemudahan bagi penggunanya untuk lebih memviralkan forumnya dengan layanan 'Get In Touch'. Pengguna dapat berbagi konten dari forum pengguna ke situs media sosial seperti Facebook, Twitter, Path, dan Google+.
	    	    ![N|Solid](http://i.imgur.com/6IA7FZG.png)
	    * Melihat aktivitas tanpa login : Pengguna yang belum login-pun dapat melihat perkembangan aktivitas, dan diskusi dari forum tersebut.
	    	    ![N|Solid](http://i.imgur.com/GvRAZGz.png)
	    * Free Trial : Pengguna yang sedang merintis bisnisnya dapat mencoba mode ini terlebih dahulu. Pada mode ini pengguna tidak dikenakan biaya. Mode free trial ini berjalan selama 30 hari.
	    * Open Source : Vanilla Forum ini merupakan aplikasi open source, sehingga para pengembang software dapat mengunduh dengan gratis source codenya untuk kemudian dikembangkan.

	    * Mode Business : Pengguna dapat meng-upgrade Vanilla Forum nya menjadi Business. Fiturnya meliputi gamification, migrasi data, theming dan integrasi CRM. Sistem ini juga mendukung beberapa protokol SSO dan forum cloud-base. Melalui forum cloud-base, bisnis memiliki tempat di mana mereka dapat mempublikasikan konten mereka, melibatkan audiens, dan mengarahkan lalu lintas ke situs Web mereka untuk meningkatkan penjualan mereka serta mempertahankan dan memproyeksikan tampilan positif dari merek atau perusahaan mereka.
	    	    ![N|Solid](http://i.imgur.com/SahbW0N.png)
	    * Flood Control : Mencegah spam pada forum pengguna dengan membatasi jumlah diskusi & komentar yang dapat dikirim pengguna dalam jangka waktu tertentu.
	    	    ![N|Solid](http://i.imgur.com/dKt4YdK.png)
	    * Banning Options : Admin dapat memblokalamat IP, domain email, dan kata-kata dari nama pengguna menggunakan layanan ini yang diakses di halaman dashboard.
	        	    ![N|Solid](http://i.imgur.com/DSfMZnE.png)
	- Cons : 
	    * Mahal : Mode trial Vanilla forum ini akan berakhir setelah 30 hari. Artinya jika pengguna ingin melanjutkan penggunan forumnya harus membayar sejumlah uang dengan nominal yang tidak kecil. Versi Starter dibandrol $ 299/ bulan, Corporate sebesar $ 599/ bulan, Enterprise sebesar $ 1199/ bulan. 
	    	    ![N|Solid](http://i.imgur.com/we2AVYt.png)
	    
	    * No Live Chat : Layanan Live Chat biasanya ada pada berbagai forum diskusi, ini untuk mendukung berjalannya diskusi. Sayangnya, pada Vanilla Forum layanan ini tidak ada.
	
 
##### Perbandingan dengan aplikasi web kelompok lain yang sejenis (Joomla)
Joomla merupakan Content Management System (CMS) yang memungkinkan penggunanya untuk membangun situs Web dan aplikasi online. Joomla sangatlah berkembang dan banyak fitur yang disediakan dalam pembangunan sebuah website. Beberapa perbedaan Joomla vs Vanilla Forum yakni:

    | Kategori | JOOMLA | Vanila Forum |
    |-------| ------ | ------ |
    |**Multilanguage**| Joomla menawarkan lebih dari 65 bahasa dari penjuru dunia | vanila hanya bahasa inggris saja|
    | **Open Source**|Open Source| Open Source |
    | **Easy Update** |Joomla 3.5.0, menyediakan plugin email update notification yang kakan mengabarkan kepada pengguna jika ada      perbaruan yang tersedia |  Harus melihat update terbaru ada website resmi Vanila Forum|
    |**Media Manager**  | Tool Joomla ini memberikan kemudahan untuk managing media. Mulai dari Upload, Organize dan sebagainya |Vanilla Forum tidak memiliki Fitur atau Tool media manager |
    |------ |-------- |--------|
   
    
Joomla dan Vanilla Forum masing-masing memiliki kelebihan yang menjadi daya tarik tersendiri. Vanilla menjadi forum diskusi yang dibuat dengan tampilan yang simpel, ringan dan mudah digunakan dengan berbagai plug-in yang tersedia, serta fitur-fitur lainnya. Sedangkan Joomla menjadi CMS yang kaya akan fitur sehingga memudahkan penggunanya untuk membuat website tanpa bersentuhan langsung dengan coding.
![N|Solid](http://i.imgur.com/5GHCCO6.png)
![N|Solid](http://i.imgur.com/9Jauss4.png)
![N|Solid](http://i.imgur.com/duhJcih.png)
![N|Solid](http://i.imgur.com/SNhJjir.png)
     

## Referensi
- Install Vanilla Forums on Ubuntu 16.04 | https://www.1and1.co.uk/cloud-community/learn/application/misc/install-vanilla-forums-on-ubuntu-1604/
- PHPmyadmin Documentation | https://help.ubuntu.com/lts/serverguide/phpmyadmin.html
- Vanilla Forums Open Source Theme | https://open.vanillaforums.com/addon/browse/themes/
- Vanilla Forums Help | https://open.vanillaforums.com/discussion/12702/could-not-instantiate-mail-function
- PHP Curl Instalation | http://stackoverflow.com/questions/33775897/how-do-i-install-the-ext-curl-extension-with-php-7
- Vanilla Forum Reviews 2016 | https://www.comparakeet.com/forum-software/vanilla-forums-review/
- Joomla's Features | https://www.joomla.org/core-features.html
