void main () 
{
  // Map<String, String> mahasiswa = {
  //   "nama": "Margareta",
  //   "jurusan": "Teknik Informatika",
  //   };
  
  // print("Nama : ${mahasiswa['nama']}");
  // print("Jurusan : ${mahasiswa['jurusan']}");

  var mahasiswa = {
    "TI001": "Margareta",
    "TI002": "Mery",
    "TI003": "Alucard",
  };

  // Menambahkan data baru
  mahasiswa["TI004"] = "Miya";

  print("Nama mahasiswa: ${mahasiswa}");

  // Map konstanta
  final prodi = const {1: "TI", 2: "SI", 3: "MI"};
  print("Kode Prodi: $prodi");

}