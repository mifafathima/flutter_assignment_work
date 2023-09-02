import 'package:flutter/material.dart';


class ChatScreen_UI extends StatelessWidget {
  var name = [
    "John Lucas",
    "Ann mary",
    "suzen D'souza",
    "Karl james",
    "Michale Davis",
    "Milli florence",
    "Michele rine",
    "Harry Styles",
    "Michale Moronno"
  ];
  var msg = [
    "hello u there?",
    "yes",
    "BRB",
    "??",
    "0:05",
    "long time no seee!!",
    "\$ 5467",
    "hi",
    "987647847838"
  ];
  var image = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTb5b2SxixZBD8-EcJDuEXXaefC-poteHybw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQNMTFATZBJ9DksLVCqamNtIKJY6bOdFyboA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqN1UbZgYqqBvOkiYWxDF7AEpAF7ao0-O7Pg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSQs0mgmCBJlcURLFfcPO1F4DFWN3W-SSWclDoU0hzSLxqpUFulv7-P3sBM8ONodJbWvY&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ovOymdlL3dNyMw9DNtudhEdWaGUgdSqXmg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy9PrQfnMDNLMZiCiewfzdCpuzk1RYEvSAiw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEnhMeb363xvEKkSTqJEDskB6erOix_0E0kw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqUJw9TuJC5noeN50TaC_rCvBxKB3CxFU1Kg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb_PLr-6AXfuplZxcpbLpSc__pLgfy8Vtx6g&usqp=CAU"
  ];
  var circleno =[
    "2",
    "1",
    "3",
    "1",
    "1",
    "4",
    "1",
    "2",
    "4"
  ];
  var time = [
    "11:00 pm",
    "10:20 pm",
    "08:05 pm",
    "05:03 pm",
    "03:00 pm",
    "11:00 am",
    "10:02 am",
    "06:45 am",
    "05:55 am",
  ];
  var tick =[
    "assets/icons/double tick.png",
    "assets/icons/double tick.png",
    "assets/icons/double tick.png",
    "assets/icons/double tick.png",
    "assets/icons/mic.png",
    "assets/icons/double tick.png",
    "assets/icons/double tick.png",
    "assets/icons/double tick.png",
    "assets/icons/double tick.png",
  ];
  var color =[
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.greenAccent,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
    Colors.blueGrey,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children:
        List.generate(9, (index) => Card(
          child: ListTile(
            title: Text(name[index],style: const TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Row(
              children: [
                Image.asset(tick[index],color: color[index],height: 20,width: 20,),
                const SizedBox(width: 5,),
                Text(msg[index]),
              ],
            ),
            leading: CircleAvatar(backgroundImage: NetworkImage(image[index]),),
            trailing: Wrap(
              direction: Axis.vertical,
              children:[
                Text(time[index]),
                const SizedBox(height: 6,),
                CircleAvatar(minRadius: 5,maxRadius: 10,backgroundColor: Colors.teal,child: Text(circleno[index],style: const TextStyle(color: Colors.white),),)

              ],
            ),

          ),
        )),


      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){},
        tooltip: 'message',
        child: const Icon(Icons.message),
      ),
    );
  }
}
