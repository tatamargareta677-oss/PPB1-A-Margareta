void main ()
{
  var s1 = 'Halo';
  var s2 = "Dart";
  var s3 = 'Ini string dengan petik tunggal \'escaped\'';
  var s4 = "Atau lebih mudah pakai petik ganda";

  print(s1);
  print(s2);  
  print(s3);
  print(s4);

  // Interpolasi String
  var nama = "Nayla Pebriana Al-Aydrus";
  print("Halo, $nama!");
  print("Jumlah karakter: ${nama.length}");

  // Multi-line String
  var multi = '''
  Ini adalah
  string multi-baris
  ya, ini multi baris, ada beberapa baris
  ''';
  print(multi);

  // Raw String
  var raw = r'Tidak ada \n escape \n disini';
  print(raw);
}