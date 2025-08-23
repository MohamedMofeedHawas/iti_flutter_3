import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iti_flutter_3/cart_page/view.dart';
import 'package:iti_flutter_3/orders_page/view.dart';
import 'package:iti_flutter_3/products/view.dart';
import 'package:iti_flutter_3/profile_page/view.dart';


int click = 0;
List <Widget> widgetList = [
  HomePage(),
  ProductsPage(),
  CartPage(),
  OrdersPage(),
  ProfilePage(),
];





List<Map<String, String>> list = [
  {
    "title": "Summer Sales",
    "imageURL":
        "https://reveuseblender.com/cdn/shop/products/personalsizeblender_0f747243-21ee-4ecf-9326-56f3d2bb9738_300x300.jpg?v=1639635019",
    "subTitle": "Up to 50% off",
  },
  {
    "title": "Winter Sales",
    "imageURL":
        "https://www.minimus.biz/images/icons/Domestics-Main-Collage.jpg",
    "subTitle": "Up to 20% off",
  },
  {
    "title": "Summer Sales",
    "imageURL": "https://www.minimus.biz/images/icons/Personal-Care-Main.jpg",
    "subTitle": "Up to 30% off",
  },
];
List <Widget> listDrawer = [
  HomePage(),
  ProductsPage(),
  CartPage(),
  OrdersPage(),
  ProfilePage(),
];

List<DrawerItems> drawerItems = [
  DrawerItems(title: "Home", icon: Icons.home, index: 0,),
  DrawerItems(title: "Products", icon: Icons.shopping_bag, index: 1,),
  DrawerItems(title: "Cart", icon: Icons.shopping_cart, index: 2,),
  DrawerItems(title: "Orders", icon: Icons.list_alt, index: 3,),
  DrawerItems(title: "Profile", icon: Icons.person, index: 4,),
];

List<ListItem> listItems = [
  ListItem(
    name: "Laptop",
    price: 120,
    rate: 4.9,
    imageURL:
        "https://5.imimg.com/data5/ZQ/ND/NM/SELLER-97718215/portable-mini-laptop.jpg",
  ),
  ListItem(
    name: "Apple Mobile",
    price: 1000,
    rate: 5,
    imageURL:
        "https://2b.com.eg/media/catalog/product/cache/45bcba66b667d1ca52af48b101a5f0cb/a/p/apple-iphone-16-pro-white-1_2.jpg",
  ),
  ListItem(
    name: "TV",
    price: 95,
    rate: 4.2,
    imageURL:
        "https://s.alicdn.com/@sc04/kf/Hb2bf94621c9e43c283153a16fe401f84n/Small-Size-24inch-Cheap-Television-Mini-Lcd-Tv.jpg_300x300.jpg",
  ),
  ListItem(
    name: "P.C",
    price: 165,
    rate: 4.9,
    imageURL:
        "https://cdn11.bigcommerce.com/s-w5trgcbv/images/stencil/320w/products/13576/78210/large-Dell7010SFF_23__95629.1.jpg",
  ),
  ListItem(
    name: "Mouse",
    price: 190,
    rate: 4.5,
    imageURL:
        "https://m.media-amazon.com/images/I/41XCDZWT5ML._UF350,350_QL80_.jpg",
  ),
  ListItem(
    name: "Keyboard",
    price: 300,
    rate: 5,
    imageURL:
        "https://m.media-amazon.com/images/S/aplus-media/sota/7d77247a-92a9-48eb-a858-5be38ec04c7f.__CR0,0,300,300_PT0_SX300_V1___.jpg",
  ),
  ListItem(
    name: "Table",
    price: 320,
    rate: 2.9,
    imageURL: "https://m.media-amazon.com/images/I/41lgFFFBsaL._SR290,290_.jpg",
  ),
  ListItem(
    name: "Chair",
    price: 100,
    rate: 3.1,
    imageURL:
        "https://target.scene7.com/is/image/Target/GUEST_fab8b404-afa9-42c3-b860-8da9913340cb?wid=300&hei=300&fmt=pjpeg",
  ),
  ListItem(
    name: "Woman Bag",
    price: 200,
    rate: 3.1,
    imageURL:
        "https://s.alicdn.com/@sc04/kf/H18b7d51666ac4975aa519ce90b19c97cr/Fashion-New-Design-Side-Hand-Bags-for-Girls-High-Quality-Vegan-Leather-Crossbody-Bag-Small-Leather-Elegant-Women-s-Shoulder-Bags.jpg_300x300.jpg",
  ),
  ListItem(
    name: "Man Bag",
    price: 365,
    rate: 4.9,
    imageURL: "https://m.media-amazon.com/images/I/41Di3q8ms6L._SR290,290_.jpg",
  ),
  ListItem(
    name: "Android Mobil",
    price: 200,
    rate: 5,
    imageURL:
        "https://s.alicdn.com/@sc04/kf/He1d44cd79536465a8bf2091769b918f1f/Unihertz-Jelly-Star-Smartphone-Mini-Size-Phone-Android-13-Smartphone-8GB-256GB-G99-Octa-Core-Mobile-Phone-48MP-3-Inch-Cellphones.jpg_300x300.jpg",
  ),
  ListItem(
    name: "Smart Watch",
    price: 500,
    rate: 1.8,
    imageURL:
        "https://s.alicdn.com/@sc04/kf/Hc19e92ee14124f14abddd6ecbed7207aF/G08-Small-Size-Smart-Watch-2024-Health-Monitoring-Bracelets-Fitness-Tracker-Body-Temperature-ECG-Blood-Oxygen-Smartwatch.png_300x300.jpg",
  ),
  ListItem(
    name: "Rings",
    price: 320,
    rate: 3.6,
    imageURL: "https://m.media-amazon.com/images/I/61x+iNcCRZL._UY300_.jpg",
  ),
  ListItem(
    name: "Shoes",
    price: 480,
    rate: 4,
    imageURL:
        "https://www.astarshoes.com/cdn/shop/files/Women_sSmallSizeThicksoleFashionCasualShoes-6_300x300.jpg?v=1727319984",
  ),
];
// int click = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


      return Scaffold(
          // bottomNavigationBar: CurvedNavigationBar(buttonBackgroundColor: Colors.teal[100],
          //
          //   backgroundColor: Colors.lightGreenAccent.withOpacity(0.4),
          //   items: <Widget>[
          //     Icon(Icons.home, color: click ==0 ? Colors.indigoAccent[700] : Colors.black,size: 27,shadows: [BoxShadow(
          //
          //         color: click ==0 ? Colors.red :Colors.transparent
          //         ,blurRadius: 12                )
          //     ],),
          //     Icon(shadows: [
          //       BoxShadow(
          //           color: click ==1 ? Colors.red :Colors.transparent
          //           ,blurRadius: 12                )
          //     ],
          //
          //         Icons.shopping_bag,
          //         color: click ==1 ? Colors.indigoAccent[700] : Colors.black              ),
          //     Icon(shadows: [
          //       BoxShadow(
          //           color: click ==2 ? Colors.red :Colors.transparent
          //           ,blurRadius: 12                )
          //     ],
          //         Icons.shopping_cart,
          //         color: click ==2 ? Colors.indigoAccent[700] : Colors.black              ),
          //     Icon(Icons.list_alt, color: click ==3 ? Colors.indigoAccent[700] : Colors.black,size: 27,shadows: [
          //       BoxShadow(
          //           color: click ==3 ? Colors.red :Colors.transparent
          //           ,blurRadius: 12                )
          //     ],),
          //     Icon(Icons.person,color: click ==4 ? Colors.indigoAccent[700] : Colors.black,size: 27,shadows: [
          //       BoxShadow(
          //           color: click ==4 ? Colors.red :Colors.transparent
          //           ,blurRadius: 12                )
          //     ],),
          //
          //   ],
          //   onTap: (index) {
          //     setState(() {
          //       click = index;
          //     });
          //   },
          // ),

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
                  padding: EdgeInsetsGeometry.directional(start: 0,bottom: 0,top: 0),
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));

                },

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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HelpScreen(),));

                },

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
                onTap: () {                  Navigator.push(context, MaterialPageRoute(builder: (context) => LogoutScreen(),));
                },
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
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: HomeItems(),
        // body: widgetList[click],
      );

  }
}


class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return      SizedBox(
      height: 800,
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) => stack(
                    title: list[index]["title"]!,
                    subTitle: list[index]["subTitle"]!,
                    imageURL: list[index]["imageURL"]!,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsetsGeometry.directional(start: 13),
                child: Text(
                  "Featured Products",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(
                height: 299,
                width: 400,
                child: ListView.builder(

                  itemBuilder: (context, index) => ListItem(
                    name: listItems[index].name,
                    price: listItems[index].price,
                    rate: listItems[index].rate,
                    imageURL: listItems[index].imageURL,
                  ),
                  itemCount: listItems.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsetsGeometry.directional(start: 13),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Electronics",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: Icon(Icons.computer, color: Colors.purple),
                    style: TextButton.styleFrom(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(10),
                        ),
                      ),
                      shadowColor: Colors.grey,
                      backgroundColor: Color(0xffebeef2),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Phones",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: Icon(Icons.phone_android, color: Colors.purple),
                    style: TextButton.styleFrom(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(10),
                        ),
                      ),
                      shadowColor: Colors.grey,
                      backgroundColor: Color(0xffebeef2),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Audio",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: Icon(Icons.headphones_rounded, color: Colors.purple),
                    style: TextButton.styleFrom(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(10),
                        ),
                      ),
                      shadowColor: Colors.grey,
                      backgroundColor: Color(0xffebeef2),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Wearables",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: Icon(Icons.watch, color: Colors.purple),
                    style: TextButton.styleFrom(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(10),
                        ),
                      ),
                      shadowColor: Colors.grey,
                      backgroundColor: Color(0xffebeef2),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Camera",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: Icon(Icons.camera_alt, color: Colors.purple),
                    style: TextButton.styleFrom(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(10),
                        ),
                      ),
                      shadowColor: Colors.grey,
                      backgroundColor: Color(0xffebeef2),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Shoeses",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: FaIcon(
                      FontAwesomeIcons.shoePrints,
                      color: Colors.purple,
                    ),
                    style: TextButton.styleFrom(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(10),
                        ),
                      ),
                      shadowColor: Colors.grey,
                      backgroundColor: Color(0xffebeef2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

  }
}



class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
    );
  }
}class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Help & Support"),),
    );
  }
}class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logout"),),
    );
  }
}


Widget stack({
  required String title,
  required String subTitle,
  required String imageURL,
}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      CircularProgressIndicator(),
      Container(
        alignment: Alignment.center,
        margin: EdgeInsetsGeometry.directional(start: 10, end: 3.5),
        height: 200,
        width: 390,
        foregroundDecoration: BoxDecoration(
          color: Colors.black87.withOpacity(0.5),
          borderRadius: BorderRadiusDirectional.all(Radius.circular(23)),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageURL),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.69),
            ),
          ),
        ],
      ),
      Positioned(
        top: 10,
        left: 25,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,

            borderRadius: BorderRadiusDirectional.all(Radius.circular(5)),
          ),
          alignment: Alignment.center,
          width: 40,
          height: 30,
          child: Text(
            "New",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

class ListItem extends StatelessWidget {
  final String name, imageURL;
  final double price, rate;

  const ListItem({
    super.key,
    required this.name,
    required this.price,
    required this.rate,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.all(10),
      foregroundDecoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(20),
          topEnd: Radius.circular(20),
        ),
      ),
      width: 170,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 2, offset: Offset(0, 6), color: Colors.black26),
        ],
        borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
      ),
      child: Stack(
        children: [
          Center(child: CircularProgressIndicator()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.directional(
                  topEnd: Radius.circular(20),
                  topStart: Radius.circular(20),
                ),
                child: Image(
                  image: NetworkImage(imageURL),
                  height: 175,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 8),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 8, top: 1),
                child: Text(
                  "\$$price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: 10)),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 5, top: 1.5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.yellow.shade900),
                    SizedBox(width: 10),
                    Text("$rate", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Spacer(flex: 20),
            ],
          ),

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

