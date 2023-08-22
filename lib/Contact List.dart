import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactList(),
  ));
}

class ContactList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contact List"),
        backgroundColor: Colors.brown,
      ),
      body:  const Center(
        child: Column(
          children: [
            Card(
              child: ListTile(title: Text("John Lucas",style: TextStyle(color: Colors.brown)),
                subtitle: Text("9987234556"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTb5b2SxixZBD8-EcJDuEXXaefC-poteHybw&usqp=CAU")),
              ),
            ),
            Card(
              child: ListTile(title: Text("Ann mary",style: TextStyle(color: Colors.brown,)),
                subtitle: Text("9946322166"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQNMTFATZBJ9DksLVCqamNtIKJY6bOdFyboA&usqp=CAU")),
              ),
            ),

            Card(
              child: ListTile(title: Text("suzen D'souza",style: TextStyle(color: Colors.brown)),
                subtitle: Text("6231551190"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqN1UbZgYqqBvOkiYWxDF7AEpAF7ao0-O7Pg&usqp=CAU"),
              ),
              ),
            ),
            Card(
              child: ListTile(title: Text("Karl james",style: TextStyle(color: Colors.brown,)),
                subtitle: Text("9996098612"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSQs0mgmCBJlcURLFfcPO1F4DFWN3W-SSWclDoU0hzSLxqpUFulv7-P3sBM8ONodJbWvY&usqp=CAU"),
                ),
              ),
            ),
            Card(
              child: ListTile(title: Text("Michale Davis",style: TextStyle(color: Colors.brown)),
                subtitle: Text("9996034567"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ovOymdlL3dNyMw9DNtudhEdWaGUgdSqXmg&usqp=CAU"),
                ),
              ),
            ),
            Card(
              child: ListTile(title: Text("Milli florence",style: TextStyle(color: Colors.brown)),
                subtitle: Text("9966554432"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy9PrQfnMDNLMZiCiewfzdCpuzk1RYEvSAiw&usqp=CAU"),
                ),
              ),
            ),
            Card(
              child: ListTile(title: Text("Michele rine",style: TextStyle(color: Colors.brown)),
                subtitle: Text("6789034567"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEnhMeb363xvEKkSTqJEDskB6erOix_0E0kw&usqp=CAU"),
                ),
              ),
            ),
            Card(
              child: ListTile(title: Text("Harry Styles",style: TextStyle(color: Colors.brown)),
                subtitle: Text("8897645221"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqUJw9TuJC5noeN50TaC_rCvBxKB3CxFU1Kg&usqp=CAU"),
                ),
              ),
            ),

            Card(
              child: ListTile(title: Text("Michale Moronno",style: TextStyle(color: Colors.brown)),
                subtitle: Text("6987543214"),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb_PLr-6AXfuplZxcpbLpSc__pLgfy8Vtx6g&usqp=CAU"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
