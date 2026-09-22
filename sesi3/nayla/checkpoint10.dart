void main () {
  var mahasiswa = ["Nayla", "Muliawati", "Shinta", "Margareta"];

  print("Jumlah mahasiswa: ${mahasiswa.length}");
  print("Semua mahasiswa: $mahasiswa");
  print("Mahasiswa pertama: ${mahasiswa[0]}");

  mahasiswa[1] = "Nayra"; // update data
  print(mahasiswa);
}