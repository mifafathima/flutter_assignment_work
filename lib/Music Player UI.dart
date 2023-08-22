import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicPlayer_UI(),
  ));
}

class MusicPlayer_UI extends StatelessWidget {

  var images = [
    "assets/images/playlist img11.jpeg",
    "assets/images/playlist img10.jpeg",
    "assets/images/playlist img8.jpeg",
    "assets/images/playlist img9.jpeg",
    "assets/images/playlist img5.jpeg",
    "assets/images/playlist img1.jpeg",

  ];
  var Select = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body:SafeArea(
          child:CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              floating: true,
              pinned: false,
              centerTitle: true,
              title: Text("Playlists",
                  style: GoogleFonts.merriweatherSans(
                      fontSize: 25, color: Colors.pinkAccent)),
              bottom: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  title: Container(
                    width: double.infinity, // Adjust width as needed
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  )
              ),
            ),
            SliverGrid( gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
            ),
              delegate: SliverChildBuilderDelegate((context, index) =>Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        // height: 150,
                        // width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(images[index]))
                        ),
                      ),
                    ),
                  )
                ],
              ),childCount: 6 ),
            )
          ],
        ),


        ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Colors.black,
        selectedIndex: 2,
        showElevation: true,
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.home,color: Colors.white,),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.search,color: Colors.white,),
            title: const Text('Search'),
          ),
          FlashyTabBarItem(
            activeColor: Colors.pink,
            inactiveColor: Colors.white,
            icon: const Icon(Icons.featured_play_list_outlined,color: Colors.white,),
            title: const Text(' Playlists',style: TextStyle(color: Colors.pink),),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.list,color: Colors.white,),
            title: const Text('Settings'),
          ),
        ], onItemSelected: (i) {},
      ),
    );

  }
}
