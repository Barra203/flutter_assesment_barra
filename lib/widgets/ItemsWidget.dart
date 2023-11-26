import 'package:flutter/material.dart';

class Product {
  final String imagePath;
  final String name;
  final String description;
  final double price;

  Product({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
  });
}

class ItemsWidget extends StatelessWidget {
  final List<Product> products = [
    Product(
      imagePath: 'assets/images/1.png',
      name: 'Tshirt Cursed Speech',
      description: 'Tshirt buatan Starbhak Industries',
      price: 225,
    ),
    Product(
      imagePath: 'assets/images/2.png',
      name: 'Tshirt kedua',
      description: 'Tshirt buatan Starbhak Industries',
      price: 220,
    ),
    Product(
      imagePath: 'assets/images/3.png',
      name: 'Tshirt ketiga',
      description: 'Tshirt buatan Starbhak Industries',
      price: 900,
    ),
    Product(
      imagePath: 'assets/images/4.png',
      name: 'Tshirt keempat',
      description: 'Tshirt buatan Starbhak Industries',
      price: 415,
    ),
    Product(
      imagePath: 'assets/images/5.png',
      name: 'Tshirt keempat',
      description: 'Tshirt buatan Starbhak Industries',
      price: 461,
    ),
    Product(
      imagePath: 'assets/images/6.png',
      name: 'Tshirt keempat',
      description: 'Tshirt buatan Starbhak Industries',
      price: 415,
    ),
    Product(
      imagePath: 'assets/images/7.png',
      name: 'Jaket Varsity',
      description: 'Tshirt buatan Starbhak Industries',
      price: 415,
    ),
    Product(
      imagePath: 'assets/images/8.png',
      name: 'Tshirt keempat',
      description: 'Tshirt buatan Starbhak Industries',
      price: 415,
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        childAspectRatio: 0.68,
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          for (var product in products)
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 11),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "-30%",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        product.imagePath,
                        height: 110,
                        width: 110,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      product.description,
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp. ${product.price.toStringAsFixed(2)}0",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color: Color(0xFF4C53A5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
