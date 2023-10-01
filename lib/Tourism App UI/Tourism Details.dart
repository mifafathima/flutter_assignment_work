import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/Tourism%20App%20UI/rating%20stars2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DetailsPage(),
  ));
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Most Furious Place & Peaceful natural place",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 7,),
                    Row(
                      children: [
                         RatingStars1(rating: 5), // You can use your custom widget here
                        SizedBox(width: 10,),
                        Text("4.8 Rating"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Divider(color: Colors.black, thickness: 10,),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.unsplash.com/photo-1540541338287-41700207dee6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cmVzb3J0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("About Places", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Do we really have to explain the allure of the Galápagos? If you can, make it a priority to visit this of-another-time stretch of Ecuador, with dinosaur-like giant tortoises lumbering through the tall grass and real-life blue-footed boobies. (Pro tip: A cruise is definitely the preferred way to explore the islands; Celebrity Cruise’s Xpedition ferries just 100 passengers and holds nightly lectures by naturalists from Galápagos National Park."),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Special Facilities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                Icon(Icons.car_repair, color: Colors.blue,),
                SizedBox(width: 5,),
                Text("Parking", style: TextStyle(color: Colors.blue),),
                SizedBox(width: 60,),
                Icon(Icons.support_agent, color: Colors.blue,),
                SizedBox(width: 5,),
                Text("24*7 Support", style: TextStyle(color: Colors.blue),),
                SizedBox(width: 60,),
                Icon(Icons.wifi, color: Colors.blue,),
                SizedBox(width: 5,),
                Text("Free WiFi", style: TextStyle(color: Colors.blue),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 14, bottom: 10,right: 14),
            child: Container(
              height: 270,
              width: 478,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1605825831039-8b6b4199b04a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhvdGVsJTIwYnVpbGRpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Special Facilities", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          // Add your GridView.builder here
          GridView.builder(
            shrinkWrap: true, // Allows the GridView to scroll within the ListView
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Number of columns in the grid
              // childAspectRatio: 4, // Width to height ratio of each grid item
              mainAxisSpacing: 10, // Spacing between rows
              crossAxisSpacing: 10, // Spacing between columns
            ),
            itemCount: 4, // Replace with the number of facilities you have
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(35.0),
                child: Container(
                  height: 4,
                  width: 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueGrey
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Adult"),
                      Text("02")
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900
                ),
                onPressed: (){}, child: const Text("Explore Now")),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
