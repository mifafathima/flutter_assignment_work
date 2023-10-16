import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/FIREBASE_SIGNIN_METHODS/Google%20Signin%20using%20Firebase/Firebase_services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("WELCOME"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hey ${FirebaseAuth.instance.currentUser!.displayName} WELCOME",style: GoogleFonts.alice(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.indigo
            ),),
            const SizedBox(
              height: 10,
            ),
            Text("${FirebaseAuth.instance.currentUser!.email}"),
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: ()async{
              await FirebaseServices().signOut();
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            }, child: const Text("LOGOUT"))
          ],
        ),
      ),
    );
  }
}
