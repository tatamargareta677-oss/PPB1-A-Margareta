void main() 
{
  final produk = ['Kakap', 'Pepes', 'Syusyu', 'Komo'];
  var cari = 'Syusyu';
  print('Mencari produk: $cari');

  for (final item in produk) {
    print(item);

    if (item == cari) {
      print('Produk ditemukan!');
      break;
    }
  }
}