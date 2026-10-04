import 'dart:io';
import 'dart:math';

void main(){
  while(true){
    print('\n====================');
    print('   TUGAS 2 - PBO    ');
    print('====================');
    print('1. Konversi Nilai Angka ke Huruf');
    print('2. Program FizzBuzz (1 - 20)');
    print('3. Penghitung 5 Angka (Jumlah, Rata-rata, Max, Min)');
    print('4. Permainan Tebak Angka (0 - 5)');
    print('5. Keluar');
    stdout.write('Pilih menu (1-5): ');
    String? pilihan = stdin.readLineSync();

    switch(pilihan){
      case'1':
      tugas1();
      break;
      case'2':
      tugas2();
      break;
      case'3':
      tugas3();
      break;
      case'4':
      tugas4();
      break;
      case'5':
      print('Terima kasih');
      return;
      default:
      print('Pilihan tidak valid, silakan coba lagi.');
    }
  }
}

// 1. Menentukan Nilai huruf dari 0-100

void tugas1(){
  print('\n----- 1. Konversi Nilai Huruf -----');
  stdout.write('Masukkan nilai angka (0-100): ');
  String? input = stdin.readLineSync();
  double? nilai = double.tryParse(input ?? '');

  if (nilai == null || nilai < 0 || nilai > 100){
    print('Input tidak valid! Harap masukkan angka antara 0 hingga 100.');
    return;
  }

  String nilaiHuruf;
  if (nilai >= 85){
    nilaiHuruf = 'A';
  } else if (nilai >= 70){
    nilaiHuruf = 'B';
  } else if (nilai >= 55){
    nilaiHuruf = 'C';
  } else{
    nilaiHuruf = 'D';
  }

  print('Nilai Huruf: $nilaiHuruf');
}

// 2. Menampilkan Bilangan 1-20 (FizzBuzz)

void tugas2(){
  print('\n----- 2. Program FizzBuzz (1-20) -----');
  for (int i = 1; i <= 20; i++){
    if(i % 3 == 0 && i % 5 == 0){
      print('FizzBuzz');
    } else if (i % 3 == 0){
      print('Fizz');
    } else if (i % 5 == 0){
      print('Buzz');
    } else{
      print(i);
    }
  }
}

// 3. Aplikasi Penghitung (Jumlah, Rata-rata, Max, Min)

void tugas3(){
  print('\n----- 3. Aplikasi Penghitung 5 Angka -----');
  List angkalist =[];

  for(int i = 1; i <= 5; i++){
    while(true){
      stdout.write('Masukkan angka ke-$i: ');
      String? input = stdin.readLineSync();
      double? angka = double.tryParse(input ?? '');

      if(angka != null){
        angkalist.add(angka);
        break;
      } else {
        print('Input harus berupa angka!');
      }
    }
  }

  double jumlah = angkalist.reduce((a,b) => a + b);
  double rataRata = jumlah / angkalist.length;
  double maksimum = angkalist.reduce((a, b) => max(a, b));
  double minimum = angkalist.reduce((a,b) => min(a, b));

  print('\n----- Hasil Perhitungan -----');
  print('Jumlah     : $jumlah');
  print('Rata-rata  : $rataRata');
  print('Nilai Maks : $maksimum');
  print('Nilai Min  : $minimum');
}

// 4. Aplikasi Tebak Angka (0 sampai 5)

void tugas4(){
  print('\n ----- 4. Permainan Tebak Angka (0-5) -----');

  Random random = Random();
  int angkarandom = random.nextInt(6);

  stdout.write('Masukkan Tebakan Anda (0-6): ');
  String? input = stdin.readLineSync();
  int? angkaTebakan = int.tryParse(input ?? '');

  if (angkaTebakan == null || angkaTebakan < 0 || angkaTebakan > 5){
    print('Harap masukkan angka bulat antara 0 sampai 5!');
    return;
  }

  print('Angka rahasia komputer: $angkarandom');
  if (angkaTebakan == angkarandom){
    print('Selamat! Tebakan anda Benar!');
  } else{
    print('Maaf, tebakan anda SALAH! Silakan coba lagi.');
  }
}