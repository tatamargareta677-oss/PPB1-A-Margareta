void main ()
{
  // List<String> mahasiswa = [
  // "Margareta",
  // "Mery",
  // "Aulia",
  // "Ajeng",
  // "Adel",
  // "Nayra",
  // ];

  // List<int> umur = [
  // 19,
  // 20,
  // 21,
  // 30,
  // 50
  // ];

  
  // List<bool> status = [
  // true,
  // false,
  // true,
  // true,
  // false
  // ];

  // List<double> ipk = [
  // 3.5,
  // 3.2,
  // 3.8,
  // 3.9,
  // 3.1
  // ];

  // // print(mahasiswa);
  // print("nama mahasiswa: ${mahasiswa[2]}");

  // // print(umur);
  // print("umur: ${umur[2]}");

  var mahasiswa = ["Margareta", "Mery", "Aulia", "Ajeng", "Adel", "Nayra"];

  print("Jumlah mahasiswa: ${mahasiswa.length}");
  print("Semua mahasiswa: $mahasiswa");
  print("Mahasiswa pertama: ${mahasiswa[0]}");

  mahasiswa[1] = "Alucard"; // update data
  print(mahasiswa);

}