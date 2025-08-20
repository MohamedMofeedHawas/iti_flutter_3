import 'package:flutter/material.dart';

import '../cart_page/view.dart';
import '../home_page/view.dart';
import '../products/view.dart';
import '../profile_page/view.dart';
List<DrawerItems> drawerItems = [
  DrawerItems(title: "Home", icon: Icons.home, index: 0,),
  DrawerItems(title: "Products", icon: Icons.shopping_bag, index: 1,),
  DrawerItems(title: "Cart", icon: Icons.shopping_cart, index: 2,),
  DrawerItems(title: "Orders", icon: Icons.list_alt, index: 3,),
  DrawerItems(title: "Profile", icon: Icons.person, index: 4,),
];
List <Widget> listDrawer = [
  HomePage(),
  ProductsPage(),
  CartPage(),
  OrdersPage(),
  ProfilePage(),
];
class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _CartPageState();
}

class _CartPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: UserAccountsDrawerHeader(
                  currentAccountPictureSize: Size(80, 75),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/thumbnails/008/931/593/small/confident-cheerful-male-lawyer-reads-business-news-has-gentle-smile-dressed-in-formal-clothes-poses-in-urban-setting-businessman-checks-email-or-updates-profile-on-digital-tablet-computer-photo.JPG",
                    ),
                  ),
                  decoration: BoxDecoration(color: Color(0Xff489d87)),
                  accountName: Text(
                    "Mohamed Mofeed Hawas",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text(
                    "mohamedznuav999@gmail.com",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              width: double.infinity,

              alignment: Alignment.topLeft,
              color: Colors.transparent,
              height: 280,
              child: ListView.builder(
                padding: EdgeInsetsGeometry.directional(
                  start: 0,
                  bottom: 0,
                  top: 0,
                ),
                itemBuilder: (context, index) => DrawerItems(
                  title: drawerItems[index].title,
                  icon: drawerItems[index].icon, index: index,
                ),
                itemCount: drawerItems.length,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},

              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},

              leading: Icon(Icons.help),
              title: Text(
                "Help & Support",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.logout),
              title: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),

      appBar: AppBar(title: Text("Orders"),),

    );
  }
}


final class DrawerItems extends StatelessWidget {
  final String title;
  final IconData icon;
  final int index;

  const DrawerItems({super.key, required this.title, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push( MaterialPageRoute(builder: (context) => listDrawer[index]));

      },
      leading: Icon(icon, color: Colors.black.withOpacity(0.7)),
      minVerticalPadding: 5,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black.withOpacity(0.7),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
