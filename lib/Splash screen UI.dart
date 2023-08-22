import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[
                Colors.pink,
                  Colors.orange
              ]
        )),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/icon new.png",height: 100,width: 100,color: Colors.white,),
              Text("Fresh Foods",style: GoogleFonts.lobster(
                fontSize: 40,

                color: Colors.white
              )),
              Text("Tasty & Healthy",style:GoogleFonts.dancingScript(
                fontSize: 20,
                color: Colors.white
              ),),
              const SizedBox(height: 30,),
             Image.network("https://www.boldsky.com/img/2019/12/02-1472812155-fruits1-1577779872.jpg",height: 200,width: 300,)

              //Image.asset("assets/images/fruit-transparent.jpg",)

            ],
          ),
        ),
      ),
    );
  }
  
}