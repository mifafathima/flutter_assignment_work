import 'package:flutter/material.dart';
import 'package:flutter_assignment_work/Tourism%20App%20UI/Tourism%20Details.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tourism_Home(),
  ));
}

class Tourism_Home extends StatefulWidget {
  const Tourism_Home({super.key});

  @override
  State<Tourism_Home> createState() => _Tourism_HomeState();
}

class _Tourism_HomeState extends State<Tourism_Home> {

  var image = [
    "https://media.istockphoto.com/id/1483214671/photo/himachal-roadways.jpg?s=612x612&w=0&k=20&c=aKuv56b_EuBHUfLAmRYuM962J02n-sEDJtBjIkanRqg=",
    "https://media.istockphoto.com/id/1450543960/photo/uae-dubai-cityscape-skyline-city-night-view.jpg?s=612x612&w=0&k=20&c=EYtKcAxnEDnEbi4L2ygWiUr5rGlSw7HsxjmKB7nwW88=",
    "https://plus.unsplash.com/premium_photo-1661818511718-200a5c534b8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c25vdyUyMHBsYWNlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1491466424936-e304919aada7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80"
  ];

  var name = [
    "Furious Place",
    "Luxury Place",
    "Favourite Place",
    "Nature Look"
  ];

  var number = [
    "7050",
    "7051",
    "7052",
    "7053"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            floating: true,
            pinned: false,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            title: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Go ',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  TextSpan(
                    text: 'Fast',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue.shade800,
                ),
              )
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.grey,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade900),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade900,
                      )),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Popular Places",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                )
              ],
            ),
          ),
          SliverGrid(
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
            delegate: SliverChildBuilderDelegate(childCount: 4,(context, index) => Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:  DecorationImage(
                        fit: BoxFit.cover,
                          image: NetworkImage(image[index]))
                    ),
                  ),
                ),
                 Positioned(
                  left: 20,
                    bottom: 40,
                    child: Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                ),
                Positioned(
                    left: 20,
                    top: 30,
                    child: Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(5)
                  ),

                  child:  Center(child: Text(number[index],style: TextStyle(color: Colors.white),)),
                ))
              ],
            ),),
          ),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900
                  ),
                    onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage()));
                    }, child: const Text("Explore Now")),
              ))
        ],
      ),
    );
  }
}
