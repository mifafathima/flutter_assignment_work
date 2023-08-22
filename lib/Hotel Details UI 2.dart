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
                child: Center(child: Text("8.4/85 reviews",style: TextStyle(color: Colors.white),)),
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
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    RatingStars(rating: 4,),
                    SizedBox(width: 250,),
                    Text("\$ 400",style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            Row(
              children: [
                Icon(Icons.location_on_sharp,size: 20,color: Colors.red,),
                Text("Bolgatty Island, Kochi (Cochin) 682504 India",style: TextStyle(color: Colors.blueGrey),),
                SizedBox(width: 120,),
                Text("/ Per night",style: TextStyle(color: Colors.black,fontSize: 15),)
              ],
            )

      ],
    ),)
    ,
    );
  }
}
