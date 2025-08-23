import 'package:flutter/material.dart';

import '../cart_page/view.dart';
import '../home_page/view.dart';
import '../orders_page/view.dart';
import '../products/view.dart';
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


class ProfilePage extends StatefulWidget {

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override


  @override.
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
      
      appBar: AppBar(title: Text("Profile"),),
      
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0Xff489d87),
              borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(30),bottomEnd: Radius.circular(30)),

            ),
          child: Column(mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 45,backgroundImage: NetworkImage( "https://static.vecteezy.com/system/resources/thumbnails/008/931/593/small/confident-cheerful-male-lawyer-reads-business-news-has-gentle-smile-dressed-in-formal-clothes-poses-in-urban-setting-businessman-checks-email-or-updates-profile-on-digital-tablet-computer-photo.JPG",
              ),),              SizedBox(height: 18,),

              Text("Mohamed Mofeed Hawas",style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
              ),SizedBox(height: 8,),
              Text("mohamedznuav999@gmail.com",  style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),),
          Padding(padding: EdgeInsetsGeometry.directional(start: 12,end: 12),child: Column(children: [SizedBox(height: 8),
Card(
  child: ListTile(
    leading: Icon(Icons.mail,color: Color(0Xff489d87),),
    title: Text("Email"),
    subtitle: Text("mohamedznuav999@gmail.com"),
  ),
)        ,
         SizedBox(height: 15,),
         Container(
           height: 250,
           width: double.infinity,
           decoration: BoxDecoration(
             color: Color(0xfff7f2fa),
             borderRadius: BorderRadiusDirectional.all(Radius.circular(10))
               
           ),
        child: Column(
          children: [
            ListTile(
              leading: Text("Orders Summary",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
            ),
            Divider(),
            ListTile(
              leading: Text("Total Orders",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Text("(  )",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Text("Total Spent",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              trailing: Text("(  )",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

            ),
            ListTile(
              leading: Text("Whishlist Items",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              trailing: Text("(  )",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),


            )
            
          ],
        ), ) ],),)
        ],
      ),


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
        Navigator.push(context, MaterialPageRoute(builder: (context) => listDrawer[index]));

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
