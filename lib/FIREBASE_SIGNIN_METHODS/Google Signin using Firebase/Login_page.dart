import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/FIREBASE_SIGNIN_METHODS/Google%20Signin%20using%20Firebase/Firebase_services.dart';

import 'Home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyANBP86SfFfZIg_kluVCIElcd_LnzcML-w",
        appId: "1:688679644329:android:5b3dd8d078bf39a8680db8",
        messagingSenderId:'',
        projectId: "phoneauthenticationfireb-c3fb3"
    )
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple, Colors.pink,])),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                onPressed: ()async {
                  await FirebaseServices().signInWithGoogle();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if(states.contains(MaterialState.pressed)){
                      return Colors.black26;
                    }
                    return Colors.white;
                  })
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/google.png",width: 40,height: 40,),
                      const SizedBox(width: 10,),
                      const Text("Login with Gmail",style: TextStyle(color: Colors.black87,fontSize: 24,fontWeight: FontWeight.bold),),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
