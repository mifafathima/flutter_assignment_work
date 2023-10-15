import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stag_Grid(),
  ));
}

class Stag_Grid extends StatelessWidget {
  var crosscell = [1, 1, 1, 1, 1, 1];
  var maincell = [
    1,
    2,
    1,
    2,
    1,
    1,
  ];
  final images = [
    "https://images.unsplash.com/photo-1658442383587-0ce640ea26f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80",
    "https://images.unsplash.com/photo-1620563925792-7e08e2be7ef7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1898&q=80",
    "https://images.unsplash.com/photo-1559128010-7c1ad6e1b6a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1173&q=80",
    "https://images.unsplash.com/photo-1572364769167-198dcb7b520c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80",
    "https://images.unsplash.com/photo-1599833975787-5c143f373c30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1228&q=80",
    "https://images.unsplash.com/photo-1545562083-a600704fa486?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fDclMjB3b25kZXJzJTIwb2YlMjB0aGUlMjB3b3JsZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",

  ];

  var name = [
    "WaterFowl Lakes",
    "Fairytale castle",
    "Gulf of Thailand",
    "Burj Khalifa",
    "Stonehenge (Oct., 2006).",
    "Early morning Taj Mahal"
  ];
  var date = [
    "July 22, 2022",
    "August 18, 2015",
    "May 29, 2019",
    "September 11, 2020",
    "December 23, 2018",
    "August 17, 2020",
  ];

  var place =[
    "Alberta,Canada",
    "Disney World, Orlando, FL, USA",
    "Gulf of Thailand, Thailand",
    "Burj Khalifa, Dubai,U.A.E",
    "Stonehenge, Salisbury, England, UK",
    "Taj Mahal at Agra, Agra, India"
  ];
  var crosscell1 = [
    150.0,
    400.0,
    150.0,
    400.0,
    150.0,
    150.0
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text("Wonders of world",style: GoogleFonts.cinzel(),),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: List.generate(6,
                    (index) => StaggeredGridTile.count(
                    crossAxisCellCount: crosscell[index],
                    mainAxisCellCount: maincell[index],
                    child:Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            child: Container(
                              height: crosscell1[index] ,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(images[index]))
                              ),
                            ),
                            margin: const EdgeInsets.only(left: 20,right: 20,top: 5),
                          ),
                          const SizedBox(height: 20,),
                          Text(name[index],textAlign: TextAlign.right,style: GoogleFonts.lora(
                              fontSize: 18,
                              color: Colors.indigo
                          ),),
                          const SizedBox(height: 10,),
                          Text(place[index],style: GoogleFonts.cinzel(
                              fontSize: 10,
                              color: Colors.redAccent

                          ),),
                          Text(date[index],style: GoogleFonts.cinzel(
                              fontSize: 10,
                              color: Colors.redAccent
                          ),)
                        ],
                      ),
                    )

                ),
              )),
        ));
  }
}
