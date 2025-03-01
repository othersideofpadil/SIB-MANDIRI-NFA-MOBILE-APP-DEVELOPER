void main() {
  // deklarasi variable
  String itemElektornik1 = "Laptop";
  int qtyItemElektornik1 = 3;
  double priceItemElektornik1 = 10000000.0;

  String itemElektornik2 = "TV";
  int qtyItemElektornik2 = 2;
  double priceItemElektornik2 = 6000000.0;

  String itemElektornik3 = "Keyboard";
  int qtyItemElektornik3 = 1;
  double priceItemElektornik3 = 500000.0;

  // menghitung subtotal masing masing item
  double subtotalItem1 = qtyItemElektornik1 * priceItemElektornik1;
  double subtotalItem2 = qtyItemElektornik2 * priceItemElektornik2;
  double subtotalItem3 = qtyItemElektornik3 * priceItemElektornik3;

  // menghitung total harga
  double totalHarga = subtotalItem1 + subtotalItem2 + subtotalItem3;

  // menghitung total diskon (jika pembelian lebih dari 8.000.000 diskon 10%)
  double discount = 0.0;
  if (totalHarga > 8000000) {
    discount = totalHarga * 0.1;
  }

  // menghitung total bayar
  double payments = totalHarga - discount;

  // output
  print("===== Data Penjualan Barang =====");
  print("Item 1:");
  print("Item Elektornik 1: $itemElektornik1");
  print("Quantity: $qtyItemElektornik1");
  print("Price: Rp. ${priceItemElektornik1.toStringAsFixed(0)}");
  print("Subtotal: Rp. ${subtotalItem1.toStringAsFixed(0)}");
  print("");

  print("Item 2:");
  print("Item Elektornik 2: $itemElektornik2");
  print("Quantity: $qtyItemElektornik2");
  print("Price: Rp. ${priceItemElektornik2.toStringAsFixed(0)}");
  print("Subtotal: Rp. ${subtotalItem2.toStringAsFixed(0)}");
  print("");

  print("Item 3:");
  print("Item Elektornik 3: $itemElektornik3");
  print("Quantity: $qtyItemElektornik3");
  print("Price: Rp. ${priceItemElektornik3.toStringAsFixed(0)}");
  print("Subtotal: Rp. ${subtotalItem3.toStringAsFixed(0)}");
  print("");

  print("==============================");
  print("Total Harga: Rp. ${totalHarga.toStringAsFixed(0)}");
  print("Diskon: Rp. ${discount.toStringAsFixed(0)}");
  print("Total Bayar: Rp. ${payments.toStringAsFixed(0)}");
}