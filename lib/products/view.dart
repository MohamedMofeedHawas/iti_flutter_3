import 'package:flutter/material.dart';

import '../home_page/view.dart';

List<ListItem> listItems = [
  ListItem(
    name: "Laptop",
    price: 120,
    rate: "Powerful gaming Laptop",
    imageURL:
        "https://5.imimg.com/data5/ZQ/ND/NM/SELLER-97718215/portable-mini-laptop.jpg",
  ),
  ListItem(
    name: "Apple Mobile",
    price: 1000,
    rate: "Latest Smartphone",
    imageURL:
        "https://2b.com.eg/media/catalog/product/cache/45bcba66b667d1ca52af48b101a5f0cb/a/p/apple-iphone-16-pro-white-1_2.jpg",
  ),
  ListItem(
    name: "TV",
    price: 95,
    rate: "Latest TV",
    imageURL:
        "https://s.alicdn.com/@sc04/kf/Hb2bf94621c9e43c283153a16fe401f84n/Small-Size-24inch-Cheap-Television-Mini-Lcd-Tv.jpg_300x300.jpg",
  ),
  ListItem(
    name: "P.C",
    price: 165,
    rate: "Very Smart PC",
    imageURL:
        "https://cdn11.bigcommerce.com/s-w5trgcbv/images/stencil/320w/products/13576/78210/large-Dell7010SFF_23__95629.1.jpg",
  ),
  ListItem(
    name: "Mouse",
    price: 190,
    rate: "Very New Latest Version",
    imageURL:
        "https://m.media-amazon.com/images/I/41XCDZWT5ML._UF350,350_QL80_.jpg",
  ),
  ListItem(
    name: "Keyboard",
    price: 300,
    rate: "So Good, Easy to Deal",
    imageURL:
        "https://m.media-amazon.com/images/S/aplus-media/sota/7d77247a-92a9-48eb-a858-5be38ec04c7f.__CR0,0,300,300_PT0_SX300_V1___.jpg",
  ),
  ListItem(
    name: "Table",
    price: 320,
    rate: "Latest Version of this",
    imageURL: "https://m.media-amazon.com/images/I/41lgFFFBsaL._SR290,290_.jpg",
  ),
  ListItem(
    name: "Chair",
    price: 100,
    rate: "Latest Version of this",
    imageURL:
        "https://target.scene7.com/is/image/Target/GUEST_fab8b404-afa9-42c3-b860-8da9913340cb?wid=300&hei=300&fmt=pjpeg",
  ),
  ListItem(
    name: "Woman Bag",
    price: 200,
    rate: "Very Beautiful Bag",
    imageURL:
        "https://s.alicdn.com/@sc04/kf/H18b7d51666ac4975aa519ce90b19c97cr/Fashion-New-Design-Side-Hand-Bags-for-Girls-High-Quality-Vegan-Leather-Crossbody-Bag-Small-Leather-Elegant-Women-s-Shoulder-Bags.jpg_300x300.jpg",
  ),
  ListItem(
    name: "Man Bag",
    price: 365,
    rate: "Very Bautiful Bag",
    imageURL: "https://m.media-amazon.com/images/I/41Di3q8ms6L._SR290,290_.jpg",
  ),
  ListItem(
    name: "Android Mobil",
    price: 200,
    rate: "Latest Android Mobile",
    imageURL:
        "https://s.alicdn.com/@sc04/kf/He1d44cd79536465a8bf2091769b918f1f/Unihertz-Jelly-Star-Smartphone-Mini-Size-Phone-Android-13-Smartphone-8GB-256GB-G99-Octa-Core-Mobile-Phone-48MP-3-Inch-Cellphones.jpg_300x300.jpg",
  ),
  ListItem(
    name: "Smart Watch",
    price: 500,
    rate: "Track your Fitness",
    imageURL:
        "https://s.alicdn.com/@sc04/kf/Hc19e92ee14124f14abddd6ecbed7207aF/G08-Small-Size-Smart-Watch-2024-Health-Monitoring-Bracelets-Fitness-Tracker-Body-Temperature-ECG-Blood-Oxygen-Smartwatch.png_300x300.jpg",
  ),
  ListItem(
    name: "Rings",
    price: 320,
    rate: "Beautiful & Comfortable",
    imageURL: "https://m.media-amazon.com/images/I/61x+iNcCRZL._UY300_.jpg",
  ),
  ListItem(
    name: "Shoes",
    price: 480,
    rate: "Easy to Walk",
    imageURL:
        "https://www.astarshoes.com/cdn/shop/files/Women_sSmallSizeThicksoleFashionCasualShoes-6_300x300.jpg?v=1727319984",
  ),
];

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 800,
        width: double.infinity,
        child: GridView.builder(
          itemCount: listItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // childAspectRatio: 0.5
            mainAxisExtent: 280
          ),
          itemBuilder: (context, index) => ListItem(
            name: listItems[index].name,
            price: listItems[index].price,
            rate: listItems[index].rate,
            imageURL: listItems[index].imageURL,
          ),
        ),
      ),
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
      appBar: AppBar(title: Text("Products")),
    );
  }
}

class ListItem extends StatefulWidget {
  final String name, imageURL, rate;
  final double price;

  const ListItem({
    super.key,
    required this.name,
    required this.price,
    required this.rate,
    required this.imageURL,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
bool isFave = false;
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
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 2, offset: Offset(0, 6), color: Colors.black26),
        ],
        borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
      ),
      child:Stack(children: [
        Center(child: CircularProgressIndicator()),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.directional(
                topEnd: Radius.circular(20),
                topStart: Radius.circular(20),
              ),
              child: Image(
                image: NetworkImage(widget.imageURL),
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsGeometry.directional(start: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(child: SizedBox(width: 20,)),
                      IconButton(onPressed: (){
                        setState(() {
                          isFave = !isFave;
                        });
                      }, icon: Icon(isFave == true ?Icons.favorite:Icons.favorite_border,),color: isFave == true?Colors.red:Colors.black,)
                    ],
                  ),
                  Text(
                    "\$${widget.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    widget.rate,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),

      ],),
    );
  }
}
