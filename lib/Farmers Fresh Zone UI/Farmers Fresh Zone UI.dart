import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Catogories grid.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmers_UI(),
  ));
}

class Farmers_UI extends StatefulWidget {
  @override
  State<Farmers_UI> createState() => _Farmers_UIState();
}

class _Farmers_UIState extends State<Farmers_UI> {
  var name1 = [
    "OFFERS",
    "VEGETABLES",
    "FRUITS",
    "EXOTIC",
    "FRESH CUTS",
    "NUTRITION CHARGES",
    "PACKED FLAVOUR",
    "GOURMET SALADS"
  ];

  var images1 = [
    "assets/images/fresh.jpg",
    "assets/images/fresh.jpg",
    "assets/images/fresh.jpg",
    "assets/images/fresh.jpg"
  ];
  //int index =0;

  @override
  Widget build(BuildContext context) {
    var index;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i){
          setState(() {

          });
        },
     selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
          const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "CART"),
          const BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),label: "ACCOUNT")


        ],

      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: false,
            title: Text(
              "FARMERS FRESH ZONE",
              style: GoogleFonts.concertOne(fontSize: 20, color: Colors.white),
            ),
            actions: const [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                  ),
                  Text(
                    "Kochi",
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.green,
              title: Container(
                height: 30,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search for Vegetables,Fruits..",
                  ),
                ),
              ),
            ),
          ),
    SliverList(
    delegate: SliverChildListDelegate(
    [
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(8, (index) {
    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
    onPressed: () {},
    child: Text(name1[index]),
    style: ElevatedButton.styleFrom(
      side: const BorderSide(color: Colors.green),
      backgroundColor: Colors.white,
    foregroundColor: Colors.green,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15))),
    ),
    );
    }),
    )),
      CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index,realIndex) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(images1[index]))
          ),
        );
      }, options: CarouselOptions(
        initialPage: 0,
        aspectRatio: 16 / 6,
        viewportFraction: 1.0,
        //enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      )
      ),
      const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30
        ),
        child: Container(
          height: 100,
          width: 300,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(
                color: Colors.green
              )
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.timer,color: Colors.green,),
                      SizedBox(height:7,),
                      Text("30 MINS POLICY",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_android_rounded,color: Colors.green,),
                      SizedBox(height:7,),
                      Text("TRACEABILITY",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_pin_sharp,color: Colors.green,),
                      SizedBox(height:7,),
                      Text("LOCAL SOURCING",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 10,),
      const Padding(
        padding: EdgeInsets.all(13.0),
        child: Text("Shop By Category",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
      ),
      const SizedBox(height: 25,),

      CatogoriesGrid(),

    ]
    )),


        ],
      ),

    );

  }
}
