void main () 
{
  // List berisi Map (setiap Map merepresentasikan data mahasiswa)
  List<Map<String, dynamic>> mahasiswa = [
    {
      'nama': 'Muliawati',
      'nim': '3042025017',
      'nilai': 90,
    },
    {
      'nama': 'Nayla Pebriana Al-Aydrus',
      'nim': '3042025019',
      'nilai': 95,
    },
    {
      'nama': 'Shinta Suci Maharani',
      'nim': '3042025025',
      'nilai': 85,
    },
  ];

  // Menampilkan semua data mahasiswa
  print('=== Daftar Mahasiswa ===');
  print(mahasiswa);
  for (var mhs in mahasiswa) {
    print('Nama : ${mhs['nama']} | NIM : ${mhs['nim']} | Nilai : ${mhs['nilai']}');
  }
}