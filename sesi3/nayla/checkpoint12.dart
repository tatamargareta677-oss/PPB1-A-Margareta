void main () 
{
  // Map<String, String> mahasiswa = {
  //   "nama": "Margareta",
  //   "jurusan": "Teknik Informatika",
  //   };
  
  // print("Nama : ${mahasiswa['nama']}");
  // print("Jurusan : ${mahasiswa['jurusan']}");

  var mahasiswa = {
    "TI001": "Nayla Pebriana Al-Aydrus",
    "TI002": "Muliawati",
    "TI003": "Shinta",
  };

  // Menambahkan data baru
  mahasiswa["TI004"] = "Margareta";

  print("Nama mahasiswa: ${mahasiswa}");

  // Map konstanta
  final prodi = const {1: "TI", 2: "SI", 3: "MI"};
  print("Kode Prodi: $prodi");

}