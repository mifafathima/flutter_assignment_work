import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/Hotel%20Details%20UI%202.dart';
import 'package:flutter_assignment_work/rating%20stars.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel_Ui(),
  ));
}

class Hotel_Ui extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var icon1 =[
      Icons.hotel,
      Icons.restaurant,
      Icons.local_cafe
    ];
    var text1 =[
      "Hotel",
      "Restaurant",
      "Cafe"
    ];
    var colors1 = [
      Colors.pink,
      Colors.purple,
      Colors.amber
    ];
    var images1 =[
      "https://media.istockphoto.com/id/173587041/photo/hotel-bedroom.jpg?s=612x612&w=0&k=20&c=mzbT-i0sbivf2hK4aAJi0mdYVTUca8o5vij0bJq97Ks=",
      "https://media.istockphoto.com/id/1061316090/photo/double-bed-in-hotel.jpg?s=612x612&w=0&k=20&c=AAI1ZY7yKh1YQdQgKdhpQTV4Js43Dh8TvqEecNgY74A=",
      "https://media.istockphoto.com/id/503738516/photo/loft-and-modern-bedroom.jpg?s=612x612&w=0&k=20&c=bcQGJsjvOdm7xYZ1nPdwJDDD3WwqzayXv6D95dSS3lY=",
      "https://media.istockphoto.com/id/1163498940/photo/interior-of-a-modern-luxury-hotel-double-bed-bedroom.jpg?s=612x612&w=0&k=20&c=75KFjgY3RHrQq2yTV4boA4A89qMeccMQZotFKIMURS8="
    ];
    var text2 = [
      "Grand Hyatt Kochi Bolgatty",
      "Kochi Marriott Hotel",
      "Le Maritime Kochi",
      "Radisson Blu Kochi"
    ];
    var text3 = [
      "Bolgatty island, kochi",
      "Lulu International Shopping Mall,Cochin ",
      "Puthuvype, Cochin",
      "S.A Road, Junction, Elamkulam, Kochi"
    ];
    var text4 =[
      "(450 reviews)",
      "(392 reviews)",
      "(295 reviews)",
      "(240 reviews)"
    ];
    var text5 =[
      "\$ 560",
      "\$ 439",
      "\$ 290",
      "\$ 321"
    ];
    

    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.favorite_border),
              )
            ],
            backgroundColor: Colors.blueGrey,
            expandedHeight: 100,
            leading: const Icon(Icons.menu),
            floating: true,
            pinned: false,
            bottom: AppBar(
              toolbarHeight: 120,
              elevation: 0,
              backgroundColor: Colors.blueGrey,
              title: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Type your location"),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: 400,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purpleAccent),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: "Your location..",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            prefixIconColor: Colors.white,
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverGrid(
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3
                  ),
            delegate:SliverChildBuilderDelegate((context, index) => Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height:130,
                width: 100,
                decoration: BoxDecoration(
                  color: colors1[index],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon1[index],color: Colors.white,),
                    Text(text1[index],style: const TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),childCount: 3)
          ),
          SliverGrid( gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            delegate: SliverChildBuilderDelegate((context, index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children:[
                        Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image:DecorationImage(
                            fit: BoxFit.cover,
                              image:NetworkImage(images1[index])
                        ),
                      ),
                      ),
                        Positioned(
                          right: 30,
                            bottom: 20,
                            child:Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                            color: Colors.white
                          ),
                          child: Center(child: Text(text5[index],style: const TextStyle(fontSize: 15),)),
                        ))
                    ]
                    ),
                    const SizedBox(height: 20,),
                    Text(text2[index],style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 4,),
                    Text(text3[index],style: const TextStyle(fontSize: 14),),
                    const SizedBox(height: 4,),
                    Row(
                      children: [
                        RatingStars(rating: 4,),
                        Text(text4[index])
                      ],
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HotelDetailsUI()));
                      },
                      child: Text("View Details",style:GoogleFonts.martel(
                        fontSize: 14,
                        color: Colors.blue
                      )),
                    )

                  ],
                ),
              ),
            ),childCount: 4),
          )
        ],
      )),
    );
  }
}
