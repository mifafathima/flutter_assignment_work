import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/rating%20stars.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelDetailsUI(),
  ));
}

class HotelDetailsUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
        Stack(
        children:[
          Container(
        height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://media.istockphoto.com/id/90406310/photo/sunset-at-luxery-hotel.jpg?s=612x612&w=0&k=20&c=JCdqsg3o6O6j4ztOJJpoz94bdmeOyJ56o--8FvlQ4yw="))
          ),

        ),
          Positioned(
            left: 30,
              top: 190,
              child: Text("Grand Hyatt,"
              ,style: GoogleFonts.dmSerifDisplay(
                fontSize: 35,
                color: Colors.white
              ),)),
          Positioned(
              left: 30,
              top:220,
              child: Text("Kochi,"
                ,style: GoogleFonts.dmSerifDisplay(
                    fontSize: 35,
                    color: Colors.white
                ),)),
          Positioned(
              left: 30,
              bottom:30,
              child: Container(
                height: 35,
                width: 135,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text("8.4/85 reviews",style: TextStyle(color: Colors.black),)),
              )
          ),
          Positioned(
              right: 30,
              bottom:20,
              child:FaIcon(FontAwesomeIcons.heart,color: Colors.white,)
          ),
        ],
  
      ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    RatingStars(rating: 4,),
                    SizedBox(width: 140,),
                    Column(
                      children: [
                        Text("\$ 400",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),),
                        Text(" /Per night",style: TextStyle(color: Colors.blueGrey,fontSize: 15),)
                      ],
                    )
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.location_on_sharp,size: 20,color: Colors.red,),
                  Text("Bolgatty Island, Kochi",style: TextStyle(color: Colors.blueGrey),),
                  SizedBox(width: 120,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 35,
                width: 300,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text("Book Now",style: TextStyle(color:Colors.white ,fontSize: 20),)),
            ),
      SizedBox(height: 20,),

      Text("Grand Hyatt Kochi Bolgatty",style: GoogleFonts.volkhov(
        fontSize: 30,
        color: Colors.black54
      ),
      ),
            SizedBox(height: 20,),

      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text("Perched on the serene Bolgatty Island, Grand Hyatt Kochi Bolgatty is a waterfront urban 5-star resort"
              " overlooking the backwaters of Vembanad Lake. With its bold & compelling works of art and architecture,"
              " dramatic landscapes, opulent guestrooms and suites, exquisite dining destinations, and one of the larg"
              "est event spaces in South India, our hotel is set to redefine living grandly in the city. Live the perfe"
              "ct vacation dream on Kochi's maiden Nattika- a 2-bedroom luxury houseboat and a conference boat as you e"
              "njoy the breathtaking vistas of Vembanad Lake. The opulent interior features pleasant lounges and dining"
              " spaces which makes it a floating suite of Grand Hyatt Kochi Bolgatty. Waft through the scenic backwaters "
              "while you host a meeting on board of our conference boat. The extraordinary backdrops, remoteness and flora"
              " & fauna of the islands of lake offer an exhilarating way to enjoy your next vacation or the upcoming conference.",style: GoogleFonts.playfairDisplay(
            fontSize: 15
          ),),
        ),
      ),
      ],
    ),),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favourite"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),

      ]),
    );
  }
}
