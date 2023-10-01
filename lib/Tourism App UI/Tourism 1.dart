import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/Tourism%20App%20UI/Tourism%20home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tourism_UI1(),
  ));
}

class Tourism_UI1 extends StatefulWidget {
  const Tourism_UI1({super.key});

  @override
  State<Tourism_UI1> createState() => _Tourism_UI1State();
}

class _Tourism_UI1State extends State<Tourism_UI1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/icons/tourism logo1.png")),
            const SizedBox(height: 100,),
            SizedBox(
              height: 40,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //minimumSize: ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                  onPressed: (){},
                  child: const Text("Log In",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
            ),
            const SizedBox(height: 20,),


            const Text("- Or -",style: TextStyle(fontSize: 20),),
            const SizedBox(height: 20,),

            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade800,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                  onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Tourism_Home()));
                  },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Login With FaceBook",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 90,),
                    Icon(Icons.facebook)

                  ],
                ),
               

              ),
            ),
            const SizedBox(height: 20,),

            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                onPressed: (){},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Login With Twitter",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 110,),
                    FaIcon(FontAwesomeIcons.twitter)

                  ],
                ),


              ),
            ),
            const SizedBox(height: 20,),

            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                onPressed: (){},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Login With Google",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 110,),
                    FaIcon(FontAwesomeIcons.google)

                  ],
                ),


              ),
            )
          ],
        ),
      ),
    );
  }
}
