import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iti_flutter_3/home_page/view.dart';
import 'package:iti_flutter_3/products/view.dart';
import 'package:iti_flutter_3/profile_page/view.dart';

import 'cart_page/view.dart';
import 'orders_page/view.dart';

int click = 0;
List <Widget> widgetList = [
  HomePage(),
  ProductsPage(),
  CartPage(),
  OrdersPage(),
  ProfilePage(),
];

void main() => runApp(MyAppScreen());

class MyAppScreen extends StatefulWidget {
  const MyAppScreen({super.key});

  @override
  State<MyAppScreen> createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyAppScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 23,
          fontWeight: FontWeight.bold,

        ),
      )
    ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          bottomNavigationBar: CurvedNavigationBar(buttonBackgroundColor: Colors.teal[100],

            backgroundColor: Colors.lightGreenAccent.withOpacity(0.4),
            items: <Widget>[
              Icon(Icons.home, color: click ==0 ? Colors.indigoAccent[700] : Colors.black,size: 27,shadows: [BoxShadow(

                  color: click ==0 ? Colors.red :Colors.transparent
                  ,blurRadius: 12                )
              ],),
              Icon(shadows: [
                BoxShadow(
                  color: click ==1 ? Colors.red :Colors.transparent
                  ,blurRadius: 12                )
              ],

                Icons.shopping_bag,
                  color: click ==1 ? Colors.indigoAccent[700] : Colors.black              ),
              Icon(shadows: [
                BoxShadow(
                    color: click ==2 ? Colors.red :Colors.transparent
                    ,blurRadius: 12                )
              ],
                Icons.shopping_cart,
                  color: click ==2 ? Colors.indigoAccent[700] : Colors.black              ),
              Icon(Icons.list_alt, color: click ==3 ? Colors.indigoAccent[700] : Colors.black,size: 27,shadows: [
                BoxShadow(
                    color: click ==3 ? Colors.red :Colors.transparent
                    ,blurRadius: 12                )
              ],),
              Icon(Icons.person,color: click ==4 ? Colors.indigoAccent[700] : Colors.black,size: 27,shadows: [
                BoxShadow(
                    color: click ==4 ? Colors.red :Colors.transparent
                    ,blurRadius: 12                )
              ],),

            ],
            onTap: (index) {
              setState(() {
               click = index;
              });
            },
          ),

          body: widgetList[click] ,

        ),
    );
  }
}
