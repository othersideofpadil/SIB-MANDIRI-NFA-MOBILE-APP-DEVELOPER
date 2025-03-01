import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool memilikiKeranjang;
  
  Motor(String merk, int tahun, this.memilikiKeranjang) : super(merk, tahun);
  
  @override
  void servis() {
    print('Servis motor $merk dilakukan.');
  }
  
  @override
  void displayInfo() {
    String keranjang = memilikiKeranjang ? 'Dengan Keranjang' : 'Tanpa Keranjang';
    print('Motor: $merk ($tahun) - $keranjang');
  }
}