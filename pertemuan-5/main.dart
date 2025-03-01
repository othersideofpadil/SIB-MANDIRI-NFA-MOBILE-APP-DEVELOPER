import 'garasi.dart';
import 'mobil.dart';
import 'motor.dart';

void main() {
  Garasi garasi = Garasi();
  
  Mobil mobil = Mobil('Toyota Camry', 2022, 4);
  Mobil mobil2 = Mobil('Toyota Avanza', 2020, 4);
  Motor motor = Motor('Yamaha R15', 2020, false);
  
  garasi.tambahKendaraan(mobil);
  garasi.tambahKendaraan(mobil2);
  garasi.tambahKendaraan(motor);
  
  garasi.tampilkanDaftarKendaraan();
  
  garasi.lakukanServis();
}