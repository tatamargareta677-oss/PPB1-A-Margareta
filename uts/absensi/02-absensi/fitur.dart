import 'data.dart';
import 'input.dart';

// ============================================================
// Fungsi bantu
// ============================================================

/// Mencari mahasiswa berdasarkan NIM. Mengembalikan null jika tidak ada.
Map<String, dynamic>? cariByNim(String nim) {
  for (final mhs in daftarMahasiswa) {
    if (mhs['nim'] == nim) return mhs;
  }
  return null;
}

/// Mencetak satu baris data mahasiswa.
void cetakMahasiswa(Map<String, dynamic> mhs) {
  print('${mhs['nim']} | ${mhs['nama']}');
}

/// Meminta pengguna memilih status kehadiran.
StatusHadir bacaStatus(String label) {
  final pilihan = bacaInt(
    '$label (1=hadir, 2=izin, 3=sakit, 4=alpa)',
    min: 1,
    max: 4,
  );
  return switch (pilihan) {
    1 => StatusHadir.hadir,
    2 => StatusHadir.izin,
    3 => StatusHadir.sakit,
    _ => StatusHadir.alpa,
  };
}

// ============================================================
// Fitur yang sudah jadi
// ============================================================

/// Menu 1: menampilkan semua mahasiswa.
void tampilkanDaftar() {
  print('\n=== Daftar Mahasiswa ===');
  if (daftarMahasiswa.isEmpty) {
    print('Belum ada data mahasiswa.');
    return;
  }
  for (final mhs in daftarMahasiswa) {
    cetakMahasiswa(mhs);
  }
}

/// Menu 2: mencatat absensi untuk pertemuan berikutnya.
void catatAbsensi() {
  final nomor = absensi.length + 1;
  print('\n=== Catat Absensi Pertemuan $nomor ===');
  final Map<String, StatusHadir> data = {};
  for (final mhs in daftarMahasiswa) {
    data[mhs['nim'] as String] = bacaStatus('Status ${mhs['nama']}');
  }
  absensi[nomor] = data;
  print('Absensi pertemuan $nomor tersimpan.');
}

/// Menu 3: menampilkan absensi pada satu pertemuan.
void tampilkanAbsensiPertemuan() {
  print('\n=== Absensi per Pertemuan ===');
  if (absensi.isEmpty) {
    print('Belum ada absensi.');
    return;
  }
  final nomor = bacaInt('Nomor pertemuan', min: 1, max: absensi.length);
  final data = absensi[nomor]!;
  print('Pertemuan $nomor:');
  for (final mhs in daftarMahasiswa) {
    final status = data[mhs['nim']];
    print('${mhs['nim']} | ${mhs['nama']} | ${status?.name ?? '-'}');
  }
}

// ============================================================
// Fitur pilihan (pilih minimal 3, lihat README.md)
// ============================================================

/// Menu 4 [Mudah]: menambah mahasiswa baru.
void tambahMahasiswa() {
  // TODO: minta NIM dan nama. Tolak jika NIM sudah terdaftar (pakai cariByNim).
  // Tambahkan ke daftarMahasiswa.
    print('\n=== Tambah Mahasiswa ===');
  final nim = bacaTeks('NIM');
  if (cariByNim(nim) != null) {
    print('NIM $nim sudah pernah terdaftar.');
    return;
  }
  final nama = bacaTeks('Nama');

  daftarMahasiswa.add({
    'nim': nim,
    'nama': nama,
  
  });
  print('Mahasiswa $nama telah berhasil ditambahkan.');
}

/// Menu 5 [Mudah]: mencari mahasiswa berdasarkan sebagian nama.
void cariMahasiswa() {
  // TODO: minta kata kunci, tampilkan semua mahasiswa yang namanya mengandung
  // kata kunci tersebut (huruf besar/kecil tidak dibedakan).
  bool ditemukan = false;

  print('\n=== Cari Mahasiswa ===');

  final kataKunci = bacaTeks('Masukkan nama mahasiswa:').toLowerCase();

  for (final mhs in daftarMahasiswa) {
    final nama = (mhs['nama'] as String).toLowerCase();
    if (nama.contains(kataKunci)) {
      cetakMahasiswa(mhs);
      ditemukan = true;
    }
  }
  if (ditemukan) {
    print("Mahasiswa Telah Ditemukan");
  } else {
    print("Tidak ada mahasiswa yang ditemukan dengan kata kunci \"$kataKunci\"");
  }
}

/// Menu 6 [Sedang]: mengubah status absensi seorang mahasiswa.
void ubahStatus() {
  // TODO: minta nomor pertemuan, NIM, dan status baru (pakai bacaStatus).
  // Simpan status baru ke absensi[nomor].
  print('\n=== Ubah Status Absensi ===');

  final nomor = bacaTeks('Masukkan Nomor Pertemuan:');
  final nim = bacaTeks('Masukkan NIM Mahasiswa:');
  final statusBaru = bacaStatus('Masukkan Status Baru');

  if (absensi.containsKey(int.parse(nomor))) {
    final dataPertemuan = absensi[int.parse(nomor)]!;
    if (dataPertemuan.containsKey(nim)) {
      dataPertemuan[nim] = statusBaru;
      final mhs = cariByNim(nim);
      final String nama;
      if (mhs != null) {
      nama = mhs['nama'];
      } else {
        nama = nim;
      }
      print('Status absensi $nama pada pertemuan $nomor telah diubah menjadi ${statusBaru.name}.');
    } else {
      print('Mahasiswa dengan NIM $nim tidak ditemukan pada pertemuan $nomor.');
    }
  } else {
    print('Pertemuan dengan nomor $nomor tidak ditemukan.');
  }
}

/// Menu 7 [Sedang]: menampilkan jumlah setiap status per mahasiswa.
void tampilkanRekap() {
  // TODO: untuk setiap mahasiswa, hitung berapa kali hadir, izin, sakit, dan alpa
  // dari semua pertemuan.

  final totalPertemuan = absensi.length;

  print('\n=== Rekap Kehadiran Mahasiswa ($totalPertemuan pertemuan) ===');
  
  for (final mhs in daftarMahasiswa) {
    final nim = mhs['nim']!;
    final nama = mhs['nama']!;

    int hadir = 0;
    int izin = 0;
    int sakit = 0;
    int alpa = 0;

    absensi.forEach((nomorPertemuan, dataPertemuan) {
      if (dataPertemuan.containsKey(nim)) {
        final status = dataPertemuan[nim]!;
        if (status == StatusHadir.hadir) {
          hadir++;
        } else if (status == StatusHadir.izin) {
          izin++;
        } else if (status == StatusHadir.sakit) {
          sakit++;
        } else if (status == StatusHadir.alpa) {
          alpa++;
        }
      }
    });

    print('$nama | hadir $hadir | izin $izin | sakit $sakit | alpa $alpa');
  }
}

/// Menu 8 [Sulit]: menampilkan persentase kehadiran setiap mahasiswa.
void tampilkanPersentase() {
  // TODO: persentase = jumlah hadir / jumlah pertemuan x 100.
  // Tampilkan 1 angka di belakang koma.
  
  final jumlahPertemuan = absensi.length;

  print('\n=== Persentase Kehadiran ===');

  if (jumlahPertemuan == 0) {
    print('Belum ada data pertemuan.');
    return;
  }

  for (final mhs in daftarMahasiswa) {
    final nim = mhs['nim']!;
    final nama = mhs['nama']!;

    int jumlahHadir = 0;

    absensi.forEach((nomorPertemuan, dataPertemuan) {
      if (dataPertemuan.containsKey(nim)) {
        final status = dataPertemuan[nim];
        if (status == StatusHadir.hadir) {
          jumlahHadir++;
        }
      }
    });

    double persentase = (jumlahHadir / jumlahPertemuan) * 100;

    print('$nama | $jumlahHadir/$jumlahPertemuan pertemuan | ${persentase.toStringAsFixed(1)}%');
  }
}

/// Menu 9 [Sulit]: menampilkan mahasiswa dengan kehadiran di bawah batas.
void tampilkanDiBawahBatas() {
  // TODO: tampilkan mahasiswa yang persentase kehadirannya < batasKehadiran
  // (lihat data.dart) beserta persentasenya.
  final totalPertemuan = absensi.length;

  print('\n=== Kehadiran di Bawah ${batasKehadiran}% ===');

  if (totalPertemuan == 0) {
    print('Belum ada data pertemuan.');
    return;
  }

  bool adaYangDiBawahBatas = false;

  for (final mhs in daftarMahasiswa) {
    final nim = mhs['nim']!;
    final nama = mhs['nama']!;

    int jumlahHadir = 0;

    absensi.forEach((nomorPertemuan, dataPertemuan) {
      if (dataPertemuan.containsKey(nim)) {
        final status = dataPertemuan[nim];
        if (status == StatusHadir.hadir) {
          jumlahHadir++;
        }
      }
    });

    double persentase = (jumlahHadir / totalPertemuan) * 100;

    if (persentase < batasKehadiran) {
      print('$nama | ${persentase.toStringAsFixed(1)}%');
      adaYangDiBawahBatas = true;
    }
  }

  if (!adaYangDiBawahBatas) {
    print('Tidak ada mahasiswa yang kehadirannya di bawah batas.');
  }
}
