void main() 
{
  final angkatan = <int, List<String>>{
    2025: ['Margareta', 'Mery'],
    2026: ['Aulia', 'Ajeng'],
  };

  outerLoop:
  for (final tahun in angkatan.keys) {
    //print(tahun);
    for (final mhs in angkatan[tahun]!) {
      print('Angkatan $tahun - $mhs');

      if (mhs == 'Aulia') {
       print('Data ditemukan. Berhenti di Aulia!');
       break outerLoop; // Hentikan semua loop.
      }
    }
  }
}