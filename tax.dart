void main() {
  List<Map<String, dynamic>> orders = [
    {'ItemID': 1, 'ItemName': 'Orange', 'price': 1},
    {'ItemID': 2, 'ItemName': 'Coffee', 'price': 2},
    {'ItemID': 3, 'ItemName': 'Tea', 'price': 4},
    {'ItemID': 4, 'ItemName': 'Apple', 'price': 3},
  ];

  for (int i = 0; i < orders.length; i++) {
    fun(
      ID: orders[i]['ItemID'],
      Name: orders[i]['ItemName'],
      Price: orders[i]['price'],
    );
  }
}

void fun({required int ID, String? Name, required int Price}) {
  double tax = 0.02;
  double PriceAftertax = Price + (tax * Price);
  if (Name == null) {
    print("the price of the item with ID $ID is = $PriceAftertax");
  } else {
    print("the price of $Name with iD $ID = $Price");
  }
  print("the price after tax = $PriceAftertax");
}
