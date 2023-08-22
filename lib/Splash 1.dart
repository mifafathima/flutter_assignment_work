import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/Login%202.dart';
import 'package:flutter_assignment_work/SignUp%203.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}
class Splash extends StatefulWidget {
  
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage("assets/images/bg gradient3.jpg"))
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello There!",style:GoogleFonts.greatVibes(
                    fontSize: 40,
                    color: Colors.white
                  )),
                  //Text("welcome",style: TextStyle(fontSize: 20),),
                  Image.asset("assets/icons/person icon.png",height: 200,width: 100,),
                  const SizedBox(height: 100,),



                MaterialButton(
                  minWidth: 400,
                    height: 60,
                    onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 1
                    ),
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text("Login",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  ),

                const SizedBox(height: 20,),

                  MaterialButton(
                    minWidth: 400,
                    height: 60,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    color: Colors.cyan,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.black,
                          width: 1
                        ),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: const Text("SignUp",style: TextStyle(
                        fontSize: 20,
                      color: Colors.white
                    ),),
                  ),

                ],
              ),
            ),
          ) ),
    );
  }
}
