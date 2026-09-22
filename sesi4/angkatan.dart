void main() 
{
  var enrollmentYear = 2019; // Tahun masuk mahasiswa
  final courses = <String>[
    'Algoritma',
    'Basis Data',
    'Pemrograman Mobile',
  ];

  // Mengecek angkatan berdasarkan tahun masuk
  if (enrollmentYear >= 2020) {
    print('Angkatan Baru (2020 ke atas)');
  } else if (enrollmentYear >= 2010) {
    print('Angkatan Lama (2010 - 2019)');
  }

  // Menampilkan daftar mata kuliah yang diambil
  print('\nDaftar Mata Kuliah:');
  for (final course in courses) {
    print('- $course');
  }

  // Menampilkan semester dari 1 sampai 8
  print('\nSemester yang ditempuh:');
  for (var semester = 1; semester <= 8; semester++) {
    print('Semester $semester');
  }

  // Menambahkan tahun hingga mencapai tahun lulus
  const graduationYear = 2023;
  print('\nProgres Studi:');
  while (enrollmentYear < graduationYear) {
    enrollmentYear++;
    print('Tahun Akademik: $enrollmentYear');
  }
}