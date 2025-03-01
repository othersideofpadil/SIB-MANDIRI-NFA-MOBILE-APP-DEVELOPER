import 'dart:io';

void main() {
  // Menerima input jumlah pegawai
  stdout.write('Masukkan jumlah pegawai: ');
  int jumlahPegawai = int.parse(stdin.readLineSync()!);
  
  List<Map<String, dynamic>> daftarPegawai = [];
  
  // Menggunakan perulangan for untuk input data pegawai
  for (int i = 0; i < jumlahPegawai; i++) {
    int idPegawai = i + 1;
    
    stdout.write('\nMasukkan nama pegawai ke-$idPegawai: ');
    String nama = stdin.readLineSync()!;
    
    stdout.write('Masukkan jabatan (Staff/Manager/Direktur): ');
    String jabatan = stdin.readLineSync()!;
    
    stdout.write('Masukkan gaji pokok: ');
    double gajiPokok = double.parse(stdin.readLineSync()!);
    
    stdout.write('Masukkan jumlah tahun kerja: ');
    int tahunKerja = int.parse(stdin.readLineSync()!);
    
    // Menyimpan data pegawai dalam Map, lalu menambahkannya ke List
    Map<String, dynamic> pegawai = {
      'id': idPegawai,
      'nama': nama,
      'jabatan': jabatan,
      'gajiPokok': gajiPokok,
      'tahunKerja': tahunKerja,
    };
    
    daftarPegawai.add(pegawai);
  }
  
  // Menampilkan data pegawai secara berurutan
  print('\n===== DAFTAR PEGAWAI =====');
  int nomor = 1;
  while (nomor <= daftarPegawai.length) {
    print('Pegawai ke-$nomor: ${daftarPegawai[nomor - 1]['nama']}');
    nomor++;
  }
  
  // Menampilkan pegawai dengan ID genap
  print('\n===== PEGAWAI DENGAN ID GENAP =====');
  int index = 0;
  do {
    if (daftarPegawai[index]['id'] % 2 == 0) {
      print('ID: ${daftarPegawai[index]['id']}, Nama: ${daftarPegawai[index]['nama']}');
    }
    index++;
  } while (index < daftarPegawai.length);
  
  // Menampilkan pegawai dengan ID ganjil
  print('\n===== PEGAWAI DENGAN ID GANJIL =====');
  for (int i = 0; i < daftarPegawai.length; i++) {
    if (daftarPegawai[i]['id'] % 2 != 0) {
      print('ID: ${daftarPegawai[i]['id']}, Nama: ${daftarPegawai[i]['nama']}');
    }
  }
  
  // Menggunakan for-in untuk mencetak data pegawai
  print('\n===== DATA PEGAWAI (for-in) =====');
  for (var pegawai in daftarPegawai) {
    print('ID: ${pegawai['id']}, Nama: ${pegawai['nama']}, Jabatan: ${pegawai['jabatan']}');
  }
  
  // Menggunakan forEach untuk mencetak data pegawai
  print('\n===== DATA PEGAWAI (forEach) =====');
  daftarPegawai.forEach((pegawai) {
    print('ID: ${pegawai['id']}, Nama: ${pegawai['nama']}, Jabatan: ${pegawai['jabatan']}, Tahun Kerja: ${pegawai['tahunKerja']}');
  });
  
  // Menghitung total gaji pegawai
  double totalGaji = hitungTotalGaji(daftarPegawai);
  print('\nTotal gaji seluruh pegawai: Rp ${totalGaji.toStringAsFixed(2)}');
  
  // Menampilkan rincian gaji setiap pegawai
  print('\n===== RINCIAN GAJI PEGAWAI =====');
  for (var pegawai in daftarPegawai) {
    double tunjangan = hitungTunjangan(pegawai['gajiPokok'], jabatan: pegawai['jabatan']);
    double bonus = hitungBonusTahunan(pegawai['tahunKerja'], pegawai['gajiPokok']);
    double totalPendapatan = pegawai['gajiPokok'] + tunjangan + bonus;
    double gajiBersih = hitungGajiBersihSetelahPajak(totalPendapatan);
    
    print('Pegawai: ${pegawai['nama']}');
    print('Jabatan: ${pegawai['jabatan']}');
    print('Gaji Pokok: Rp ${pegawai['gajiPokok'].toStringAsFixed(2)}');
    print('Tunjangan: Rp ${tunjangan.toStringAsFixed(2)}');
    print('Bonus Tahunan: Rp ${bonus.toStringAsFixed(2)}');
    print('Total Pendapatan: Rp ${totalPendapatan.toStringAsFixed(2)}');
    print('Gaji Bersih: Rp ${gajiBersih.toStringAsFixed(2)}');
    print('-----------------------------------');
  }
}

// Fungsi dengan parameter untuk menghitung total gaji pegawai
double hitungTotalGaji(List<Map<String, dynamic>> daftarPegawai) {
  double total = 0;
  
  for (var pegawai in daftarPegawai) {
    double tunjangan = hitungTunjangan(pegawai['gajiPokok'], jabatan: pegawai['jabatan']);
    double bonus = hitungBonusTahunan(pegawai['tahunKerja'], pegawai['gajiPokok']);
    total += pegawai['gajiPokok'] + tunjangan + bonus;
  }
  
  return total;
}

// Fungsi dengan default parameter untuk menentukan tunjangan pegawai berdasarkan jabatan
double hitungTunjangan(double gajiPokok, {String jabatan = 'Staff'}) {
  switch (jabatan.toLowerCase()) {
    case 'Direktur':
      return gajiPokok * 0.4; // 40% dari gaji pokok
    case 'Manager':
      return gajiPokok * 0.25; // 25% dari gaji pokok
    case 'Staff':
    default:
      return gajiPokok * 0.15; // 15% dari gaji pokok
  }
}

// Fungsi rekursif untuk menghitung bonus tahunan pegawai
double hitungBonusTahunan(int tahunKerja, double gajiPokok) {
  // tidak ada bonus untuk tahun kerja 0
  if (tahunKerja <= 0) {
    return 0;
  }
  
  // Setiap tahun kerja memberikan 5% dari gaji pokok
  return (gajiPokok * 0.05) + hitungBonusTahunan(tahunKerja - 1, gajiPokok);
}

// Arrow function untuk menghitung gaji bersih setelah pajak
double hitungGajiBersihSetelahPajak(double totalPendapatan) => totalPendapatan > 5000000 
  ? totalPendapatan * 0.9  // Pajak 10% untuk pendapatan > 5 juta
  : totalPendapatan * 0.95; // Pajak 5% untuk pendapatan <= 5 juta