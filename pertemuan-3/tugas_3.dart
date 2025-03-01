import 'dart:io';

void main() {
  // Input nama dan nilai
  stdout.write('Masukan nama: ');
  String? nama = stdin.readLineSync();
  
  stdout.write('Masukan nilai: ');
  int nilai = int.parse(stdin.readLineSync()!);
  
  // Menampilkan hasil input
  print('\nNama: $nama');
  print('Nilai: $nilai');
  
  // Menggunakan if-else
  print('\nHasil menggunakan if-else:');
  if (nilai >= 90) {
    print('A - Sangat Baik');
  } else if (nilai >= 80) {
    print('B - Baik');
  } else if (nilai >= 70) {
    print('C - Cukup');
  } else if (nilai >= 60) {
    print('D - Kurang');
  } else {
    print('E - Gagal');
  }
  
  // Menggunakan switch case
  print('\nHasil menggunakan switch case:');
  String kategori;
  
  switch (nilai) {
    case >= 90:
      kategori = 'A';
      break;
    case >= 80:
      kategori = 'B';
      break;
    case >= 70:
      kategori = 'C';
      break;
    case >= 60:
      kategori = 'D';
      break;
    default:
      kategori = 'E';
  }
  
  print('Kategori: $kategori');
}