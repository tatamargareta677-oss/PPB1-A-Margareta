void main () 
{
  // List berisi Map (setiap Map merepresentasikan data mahasiswa)
  List<Map<String, dynamic>> mahasiswa = [
    {
      'nama': 'Mery',
      'nim': '3042025002',
      'nilai': 85,
    },
    {
      'nama': 'Margareta',
      'nim': '3042025006',
      'nilai': 100,
    },
    {
      'nama': 'Alucard',
      'nim': '3042025099',
      'nilai': 50,
    },
  ];

  // Menampilkan semua data mahasiswa
  print('=== Daftar Mahasiswa ===');
  print(mahasiswa);
  for (var mhs in mahasiswa) {
    print('Nama : ${mhs['nama']} | NIM : ${mhs['nim']} | Nilai : ${mhs['nilai']}');
  }
}