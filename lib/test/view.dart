import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black.withOpacity(0.5),),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black.withOpacity(0.5)),label: "Products"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black.withOpacity(0.5)),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt,color: Colors.black.withOpacity(0.5)),label: "Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black.withOpacity(0.5)),label: "Profile"),



      ]),

    );
  }
}
