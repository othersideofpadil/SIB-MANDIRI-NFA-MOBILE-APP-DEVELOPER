import 'kendaraan.dart';

class Garasi {
  List<Kendaraan> daftarKendaraan = [];
  
  void tambahKendaraan(Kendaraan kendaraan) {
    daftarKendaraan.add(kendaraan);
    print('Menambahkan kendaraan ke garasi...');
  }
  
  void tampilkanDaftarKendaraan() {
    print('Daftar Kendaraan di Garasi:');
    for (var kendaraan in daftarKendaraan) {
      kendaraan.displayInfo();
    }
  }
  
  void lakukanServis() {
    print('Melakukan servis untuk semua kendaraan...');
    for (var kendaraan in daftarKendaraan) {
      kendaraan.servis();
    }
  }
}