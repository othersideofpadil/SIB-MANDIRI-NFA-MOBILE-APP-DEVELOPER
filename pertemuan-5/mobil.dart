import 'kendaraan.dart';

class Mobil extends Kendaraan {
  int jumlahPintu;
  
  Mobil(String merk, int tahun, this.jumlahPintu) : super(merk, tahun);
  
  @override
  void servis() {
    print('Servis mobil $merk dilakukan.');
  }
  
  @override
  void displayInfo() {
    print('Mobil: $merk ($tahun) - $jumlahPintu Pintu');
  }
}