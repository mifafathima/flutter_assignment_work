import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/Music%20Player/Screens/Music%20Player%20UI%202.dart';
import 'package:flutter_assignment_work/Music%20Player/home%20main.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicSplash(),
  ));
}

class MusicSplash extends StatefulWidget {
  const MusicSplash({super.key});

  @override
  State<MusicSplash> createState() => _MusicSplashState();
}

class _MusicSplashState extends State<MusicSplash> {
  @override

  void initState() {
    Timer(const Duration(seconds: 4),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeMain()));
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/musify icon.png",color: Colors.pinkAccent,height: 200,),
            Text("Musify.",style: GoogleFonts.merriweatherSans(
                fontSize: 24, color: Colors.pinkAccent)),

          ],
        ),
      ),

    );
  }
}
