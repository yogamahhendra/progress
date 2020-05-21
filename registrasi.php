<?php

include 'koneksi.php';

function registrasi($data){
  global $koneksi;
      $nama=$data ['nama'];
      $email=$data ['email'];
      $alamat=$data ['alamat'];
      $noTelp=$data ['noTelp'];
      $jenis_kelamin=$data ['jenis_kelamin'];
      $password = mysqli_real_escape_string($koneksi, $data ['password']);
      $konpasswd = mysqli_real_escape_string($koneksi, $data ['konpasswd']);
  
      //cek email ada atau tidak
      $result = mysqli_query($koneksi, "SELECT email FROM user WHERE email = '$email'");
      if (mysqli_fetch_assoc($result)){
        echo "<script>
              alert ('email sudah terdaftar!');
              </script>";
              return false;
      }
      //cek konfirmasi password
      if ($password !== $konpasswd){
          echo "<script>
          alert('Konfirmasi password tidak sesuai');
          </script>";
          return false;
      } 
      //enkripsi password 
    //$passwd = password_hash($passwd, PASSWORD_DEFAULT);
      
       //tambah ke datbase
      mysqli_query($koneksi, "INSERT INTO user VALUES ('','$nama','$email','$alamat','$noTelp','$jenis_kelamin','$password','user')");
  return mysqli_affected_rows($koneksi);
  }

  ?>