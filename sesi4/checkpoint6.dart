void main() 
{
  final nilai = [95, 80, 0, 90, 75];

  for (final item in nilai) {
    if (item == 0) {
      continue;
    }

    print('Nilai diproses: $item');
  }
}