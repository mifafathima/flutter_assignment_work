import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

import 'Screens/Music Player UI 2.dart';
import 'Screens/Music Player UI.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeMain(),
  ));
}

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {

int index = 0;
  var screens = [
    MusicPlayer_UI2(),
    MusicPlayer_UI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
      backgroundColor: Colors.black,
      selectedIndex: index,
      showElevation: true,
      items: [
        FlashyTabBarItem(
          activeColor: Colors.pink,
          inactiveColor: Colors.white,
          icon: const Icon(Icons.home,color: Colors.white,),
          title: const Text('Home'),
        ),
        FlashyTabBarItem(
          icon: const Icon(Icons.search,color: Colors.white,),
          title: const Text('Search'),
        ),
        FlashyTabBarItem(
          icon: const Icon(Icons.featured_play_list_outlined,color: Colors.white,),
          title: const Text(' Playlists',style: TextStyle(color: Colors.pink),),
        ),
        FlashyTabBarItem(
          icon: const Icon(Icons.list,color: Colors.white,),
          title: const Text('Settings'),
        ),
      ], onItemSelected: (i) {
        setState(() {
          index = i;
        });
    },
    ),
      body: Center(child:screens[index]),
    );
  }
}
