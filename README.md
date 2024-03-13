## How to Git
## Getting Started
```
git clone https://github.com/rafzarf/ena-me-project.git
git cd ena-bpu-project
git checkout [working branch]
```
Untuk working branch sendiri, silahkan pilih sesuai fitur yang ingin dikerjakan  
Kita akan menggunakan git flow, jadi ada 2 branch penting yaitu: `main` dan `development`  
`main` adalah branch utama atau production release, sedangkan `development` adalah branch branch pengembangan atau "next release"  
Git flow sendiri mempunyai beberapa branch prefix, yaitu `feature`, `bugfix`, `release`, `hotfix`, dan `support`.

## Alur kerja
Sebelum mulai bekerja
```
git fetch -> untuk memeriksa apakah ada update terkini
git pull origin [working branch] -> untuk mengambil updatean terbaru dari repo sesuai working branch
[optional] jika ingin mengambil seluruh updatean, gunakan git pull saja
```
---
Setelah selesai bekerja
```
git add . -> untuk memasukan semua perubahan ke stagging
git commit -m "[pesan commit]" -> masuk ke commit, dan memberi nama perubahannya
```
Aturan pesan commit:
- Jelas, sesuai dengan perubahan yang dilakukan. Contoh: `menambahkan button login di landing page` jangan hanya `menambahkan button` atau `mengubah button.kt` saja. Aturannya *perubahan + fitur + spesifik*
- Ringkas, tidak terbelit-belit dan langsung to the point, sehingga orang yang melihat pesannya bisa langsung paham
- (Opsional) Deskripsi, tapi ini sulit dilakukan dan ada trik tertentu jika menggunakan Bash, strukturnya `git commit -m "(judul commit)" -m "(deskripsi commit)"`  

Ketika sudah yakin dengan perubahan yang dilakukan
```
git push origin [working branch] -> mengirim perubahan ke repo sesuai working branch
```
---
Beres, jika ingin bekerja lagi, ulangi langkah-langkahnya dari awal.

## Catatan
Struktur branch sendiri, untuk fitur adalah `feature/(spesifik)`. Kita tidak menggunakan branch per-path karena menggunakan git flow, jadi ketika selesai, semua perubahan fitur akan dikirim ke branch develop  
Sehingga perlu mengontak masing-masing reviewer sebelum mulai bekerja di salah satu fitur untuk dibuatkan branch fiturnya  

---


# PHP-Login-Template

`PHP-Login-Template` is a simple login and signup system with database built with *PHP, MySQLi Procedural and Bootstrap 4*.

# Technologies Used
- `PHP`

- `Bootstrap`

  - version 4.

- `MySQL`

# Files
- *homepage.php* -- The main page showed after login. Edit your own homepage. 
- *index.php* includes *login.php* -- Login Page.
- *signup.php* -- Signup Page.
- *footer.php* -- Footer for the webpage.
- *logoutdata.php* -- For wrong data entry in login page.

# How to Use

- Download all the source files to your computer.
- Create a DataBase as loginsystem in phpMyAdmin.
- Create users table in phpMyAdmin.
- Change the dbusername and password in dbh.inc.php file.
- Create four columns idUsers, uidUsers, emailUsers, pwdUsers in the users table.
- Or import the [loginsystem.sql](loginsystem.sql) file in the phpMyAdmin.
- Save the files, upload them to your webserver and give it a try.

# Features

- Passwords are hashed and stored (You can't view the original password of the user).
- Username and email validation is done.
- No need to re-enter the username and email again in the signup page if the password is wrong.

