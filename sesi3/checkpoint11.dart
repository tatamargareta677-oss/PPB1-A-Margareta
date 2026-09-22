void main () 
{
  // Set<String> mataKuliah = {
  //   "Dart",
  //   "Flutter",
  //   "Database",
  //   };

  // print(mataKuliah); 

  // mataKuliah.add("UI/UX");
  // print(mataKuliah);

  // mataKuliah.add("Dart1");
  // print(mataKuliah);

  var matkul = {"Algoritma", "Pemrograman", "Kalkulus"};
  matkul.add("Basis Data");
  matkul.add("Pemrograman"); // tidak akan ditambahkan karena duplikat

  print("Jumlah matkul: ${matkul.length}");
  print("Daftar matkul: $matkul");

  // Set konstanta
  final konstantaSet = const {"TI", "SI", "MI"};
  print("Program studi: $konstantaSet");

}