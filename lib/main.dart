import 'package:amazon_flutter_app/cart_screen.dart';
import 'package:amazon_flutter_app/models/product_model.dart';
import 'package:amazon_flutter_app/product_carousel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: () => print("Menu"),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        title: Image(
          image: AssetImage("assets/images/amazon.jpg"),
          height: 30.0,
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CartScreen())),
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                  bottom: 8.0,
                  right: 16.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: () => print("search"),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/05/26/00/19/man-1416138_1280.jpg"),
              ),
              Positioned(
                left: 20.0,
                bottom: 30.0,
                right: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "POPULAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "The future of",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      "virtual reality",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 70.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2017/02/10/14/10/virtual-2055227_1280.png"),
                            height: 50.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Samsung Gear VR",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "FOR GAMERS",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  // padding: EdgeInsets.all(10.0),
                                  width: 60.0,
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          ProductCarousel(
            title: "Amazon Prime Deals",
            products: products,
          ),
          ProductCarousel(
            title: "Popular Books",
            products: books,
          ),
        ],
      ),
    );
  }
}
