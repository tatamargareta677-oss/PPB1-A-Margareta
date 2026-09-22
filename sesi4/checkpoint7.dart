void main() 
{
  final mahasiswa = ['Margareta', 'Mery', 'Aulia', 'Ajeng'];

  for (final mhs in mahasiswa) {
    if (mhs == 'Aulia') {
      print('Data Aulia ditemukan, hentikan pencarian.');
      break; // Berhenti loop.
    }

    print('Memeriksa: $mhs');
  }

  print('\nLewati mahasiswa yang bernama Mery:');
  for (final mhs in mahasiswa) {
    if (mhs == 'Mery') {
      continue; // Lewati iterasi ini.
    }

    print('Mahasiswa: $mhs');
  }
}