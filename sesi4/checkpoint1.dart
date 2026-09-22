void main() 
{
  final mahasiswa = ['Margareta', 'Mery', 'Aulia', 'Ajeng', 'Adel'];
  print('jumlah mahasiswa: ${mahasiswa.length}');
  print('Daftar Mahasiswa:');
  for (var i = 0; i < mahasiswa.length; i++) {
    print('Mahasiswa ke-${i + 1}: ${mahasiswa[i]}');
  }
}