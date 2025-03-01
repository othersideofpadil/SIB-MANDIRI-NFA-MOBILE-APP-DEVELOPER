void main() {
  // Membuat List untuk menyimpan daftar mahasiswa
  List<String> daftarMahasiswa = [
    'Muhammad Fadhillah',
    'Muhammad Zaidan Ramdhan',
    'Zia Zakariyya Al Ghaniy',
    'Muhammad Nauval Ihsan',
    'Rifa Tsabita'
  ];
  print('\n=== Daftar Mahasiswa ===');
  print(daftarMahasiswa);

  // Membuat Set untuk menyimpan mata kuliah unik
  Set<String> mataKuliah = {
    'Pemrograman Mobile',
    'Basis Data',
    'Algoritma',
    'Sistem Operasi',
    'Jaringan Komputer',
    'Kalkulus'
  };
  print('\n=== Daftar Mata Kuliah Unik ===');
  print(mataKuliah);

  // Membuat Map untuk menyimpan data mahasiswa
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    'Muhammad Fadhillah': {
      'NIM': '0110222299',
      'Mata Kuliah': ['Pemrograman Mobile', 'Basis Data', 'Algoritma']
    },
    'Muhammad Zaidan Ramdhan': {
      'NIM': '0110222300',
      'Mata Kuliah': ['Basis Data', 'Sistem Operasi', 'Kalkulus']
    },
    'Zia Zakariyya Al Ghaniy': {
      'NIM': '0110222301',
      'Mata Kuliah': ['Algoritma', 'Jaringan Komputer', 'Kalkulus']
    },
    'Muhammad Nauval Ihsan': {
      'NIM': '0110222302',
      'Mata Kuliah': ['Pemrograman Mobile', 'Sistem Operasi', 'Jaringan Komputer']
    },
    'Rifa Tsabita': {
      'NIM': '0110222303',
      'Mata Kuliah': ['Basis Data', 'Algoritma', 'Kalkulus']
    }
  };

  print('\n=== Data Mahasiswa Awal ===');
  dataMahasiswa.forEach((nama, data) {
    print('\nNama: $nama');
    print('NIM: ${data['NIM']}');
    print('Mata Kuliah: ${data['Mata Kuliah']}');
  });

  // Menambahkan mahasiswa baru
  String mahasiswaBaru = 'Rizki Maulana Ishaq';
  daftarMahasiswa.add(mahasiswaBaru);
  dataMahasiswa[mahasiswaBaru] = {
    'NIM': '0110222304',
    'Mata Kuliah': ['Pemrograman Mobile', 'Jaringan Komputer', 'Kalkulus']
  };

  // Menghapus satu mahasiswa
  String mahasiswaHapus = 'Muhammad Nauval Ihsan';
  daftarMahasiswa.remove(mahasiswaHapus);
  dataMahasiswa.remove(mahasiswaHapus);

  // Menampilkan data setelah perubahan
  print('\n=== Data Mahasiswa Setelah Perubahan ===');
  dataMahasiswa.forEach((nama, data) {
    print('\nNama: $nama');
    print('NIM: ${data['NIM']}');
    print('Mata Kuliah: ${data['Mata Kuliah']}');
  });
}