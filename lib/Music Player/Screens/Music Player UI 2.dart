import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicPlayer_UI2(),
  ));
}

class MusicPlayer_UI2 extends StatefulWidget {
  @override
  State<MusicPlayer_UI2> createState() => _MusicPlayer_UI2State();
}

class _MusicPlayer_UI2State extends State<MusicPlayer_UI2> {

  var images =[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAPwCf_H83ybfS4PvOCnmV25dn3OGfNqWY2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGBjRV7XCj-A-IFzps7mg-lZD2ERX2F0vKnJxW18-Xg7jrQTDOqkZ8vb3hWKgfuOzeH7A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNSqzaWpBVyWlfJbdC4p5tqZnR6HKpW0bsUHQMZ5B0Gk8X1z0Yqbs51FquxzWiam-CDj0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6utkkrzpFybLYw82IYcwC2ZdVjZU1IFQ_u9W3Syo1gu_Ck9Jt2ypqCSKlSWZMne8dOz8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKvs5an9ztAelD049MrIPt6X7rXA-ZgZOvrc9etIRbmnSh0QQ-Z0P1SlGmhLsdCYDgjyU&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiE0kJKwMa6rROHyvnowpRO25VIV_Xue8QdriFoTFpMIMulbmBXCMeCaXhyE0HQ2DL5L4&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQhYYy0O3xo5cKVFdVzG8SAdma9F30Knfn-tNaiYYm5PtWtbjkuICBLvEZkRxhRlQNLSk&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5semmh--BkFz5Ek8MSBjkKajg-LnG4jcWDt_A-VNJDWihTdVCU1Oh2L9LhR2PuxT9jE4&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRffC4xDqulu6YtNIEKfdcknAebkVf2l3CuBMMZrdUasaX583A5CIRhii3CZxjQyptR7KQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN2aDyGR4jDLNLys7Y5tuwF6foqso2aZbSpjmABQbc5y_eftyPw64Vs6Z8MZcN57e-SQ8&usqp=CAU",


  ];

  var title1 =[
    "Yummy",
    "Let Me Love You",
    "Safari",
    "Senorita",
    "Lovely",
    "Bilionera",
    "On My Way",
    "Shape of You",
    "Taki Taki",
    "August"
  ];

  var subtitle1 =[
    "Justin Bieber",
    "DJ Snake,Justin Bieber",
    "Serena",
    "Shawn Mendes,Camilla Cabello",
    "Billie Eilish,Khalid",
    "Otilia",
    "Alan Walker",
    "Ed Sheeran",
    "DJ Snake,Selena Gomez",
    "Taylor Swift",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Musify.",
            style: GoogleFonts.merriweatherSans(
                fontSize: 25, color: Colors.pinkAccent)
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Suggested Playlists",style: GoogleFonts.merriweatherSans(
            fontSize: 20, color: Colors.pinkAccent)
            ),
          ),
          const SizedBox(height: 10,),
          CarouselSlider(
              items:[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage("assets/images/playlist img11.jpeg"))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("assets/images/playlist img10.jpeg"))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("assets/images/playlist img8.jpeg"))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("assets/images/playlist img9.jpeg"))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("assets/images/playlist img5.jpeg"))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 30,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("assets/images/playlist img1.jpeg"))
                    ),
                  ),
                ),

          ],
              options:CarouselOptions(
                initialPage: 0,

                aspectRatio: 16 / 9,
                viewportFraction: .5,
                enableInfiniteScroll: true,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayCurve: Curves.linear,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              )
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Recommended for you",style: GoogleFonts.merriweatherSans(
            fontSize: 20, color: Colors.pinkAccent)),
          ),
          Expanded(
            child: ListView(
              children:
                List.generate(10, (index) => ListTile(
                  leading: Image(image: NetworkImage(images[index])),
                  title: Text(title1[index],style: const TextStyle(color: Colors.white),),
                  subtitle: Text(subtitle1[index],style: const TextStyle(color: Colors.grey),),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border_outlined,color: Colors.pinkAccent),
                      SizedBox(width: 20,),
                      Icon(Icons.download_outlined,color: Colors.pinkAccent),
                    ],
                  )

                  ),
                ))

            ),

        ],
      ),
    );
  }
}
