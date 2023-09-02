import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CallScreen_UI(),
  ));
}

class CallScreen_UI extends StatelessWidget {
  var name = [
    "John Lucas(2)",
    "Ann mary(3)",
    "Ann mary",
    "Milli florence",
    "Michale Davis",
    "Milli florence",
    "Ann mary(4)",
    "Harry Styles",
    "Ann mary"
  ];
  var msg = [
    "Today,1:05 AM",
    "Today,12:20 AM",
    "Yesterday,11:47 PM",
    "Yesterday,11:47 PM",
    "August 23,10:58 AM",
    "August 21,9:54 PM",
    "August 19,6:02 PM",
    "July 27,12:00 PM",
    "July 27,12:01 PM"
  ];
  var image = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTb5b2SxixZBD8-EcJDuEXXaefC-poteHybw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQNMTFATZBJ9DksLVCqamNtIKJY6bOdFyboA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQNMTFATZBJ9DksLVCqamNtIKJY6bOdFyboA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy9PrQfnMDNLMZiCiewfzdCpuzk1RYEvSAiw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ovOymdlL3dNyMw9DNtudhEdWaGUgdSqXmg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy9PrQfnMDNLMZiCiewfzdCpuzk1RYEvSAiw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQNMTFATZBJ9DksLVCqamNtIKJY6bOdFyboA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqUJw9TuJC5noeN50TaC_rCvBxKB3CxFU1Kg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQNMTFATZBJ9DksLVCqamNtIKJY6bOdFyboA&usqp=CAU"
  ];
  var icon = [
    Icons.call,
    Icons.call,
    Icons.videocam,
    Icons.call,
    Icons.call,
    Icons.videocam,
    Icons.videocam,
    Icons.call,
    Icons.videocam,
  ];
  var arrow =[
    "assets/icons/arrow1.png",
    "assets/icons/arrow 2.png",
    "assets/icons/arrow 2.png",
    "assets/icons/arrow1.png",
    "assets/icons/arrow1.png",
    "assets/icons/arrow 2.png",
    "assets/icons/arrow 2.png",
    "assets/icons/arrow 2.png",
    "assets/icons/arrow1.png"
  ];
  var ArrowColor =[
    Colors.red,
    Colors.greenAccent,
    Colors.greenAccent,
    Colors.red,
    Colors.greenAccent,
    Colors.greenAccent,
    Colors.greenAccent,
    Colors.greenAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              const ListTile(
                leading:  CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: FaIcon(FontAwesomeIcons.link,color: Colors.white,size: 13,),
                ),

                title: Text("Create call link",style: TextStyle(fontSize: 20),),
                subtitle: Text("Share a link for your WhatsApp call",style: TextStyle(fontSize:15 ),),


              ),
              const SizedBox(height: 17,),
              Container(
                height: 20,
                width: double.infinity,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Recent",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
              const SizedBox(height: 15,),
              Expanded(
                child: ListView(
                    children:
                    List.generate(9, (index) => Card(
                      child: ListTile(
                          title: Text(name[index],style: const TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Row(
                            children: [
                              Image.asset(arrow[index],height: 20,width: 20,color: ArrowColor[index]),
                              const SizedBox(width: 5,),
                              Text(msg[index]),
                            ],
                          ),
                          leading: CircleAvatar(backgroundImage: NetworkImage(image[index]),),
                          trailing: Icon(icon[index],color: Colors.teal,)
                      ),

                    ),
                    ))
                ,

              )

            ]
        )
    );
  }
}
