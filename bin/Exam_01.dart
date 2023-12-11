void main() {
  List<Map<String,dynamic>> fruits = [
    {
      'Name' : 'Apple',
      'Color':  'Red',
      'Price' : 2.5,
    },
    {
      'Name' : 'Banana',
      'Color':  'Yellow',
      'Price' : 1.0,
    },
    {
      'Name' : 'Grapes',
      'Color':  'Purple',
      'Price' : 3.0,
    }
  ];
  
  displayFruitDetails(fruits);
  print('');
  applyPriceDiscount(fruits, 10);
  
}


void displayFruitDetails(List<Map<String,dynamic>> fruits) {
    print("Original Fruit Details before Discount:");
    fruits.forEach((fruits) {
      print("Name : ${fruits['Name']},"
          "Color : ${fruits['Color']},"
          "Price :\$${fruits['Price']}");
    });
}

void applyPriceDiscount (List<Map<String,dynamic>> fruits,dis) {
  print("Fruit Details After Applying $dis% Discount:");
  fruits.forEach((fruits) {
    double preset_price = fruits['Price'];
    double cu_price = preset_price * (dis/100);
    fruits['Price']=preset_price-cu_price;

    print("Name : ${fruits['Name']},"
        "Color : ${fruits['Color']},"
        "Price :\$${fruits['Price']}");
  });

}


