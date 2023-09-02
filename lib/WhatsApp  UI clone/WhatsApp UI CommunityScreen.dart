import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Community_UI(),
  ));
}
class Community_UI extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 300,
                    child: Image.asset("assets/images/community image.jpg",height: 400,width: 400,)),
                const Center(
                  child: Text("Stay connected with a community",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Communities bring members together in"),
                             Text("topic-based groups,and make it easy to get admin"),
                              Text("announcements.Any community you're added to"),
                      Text("will appear here."),
                ]
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("See Example communities >",style: TextStyle(color: Colors.teal,fontSize: 15),),
                const SizedBox(height:30),
                MaterialButton(
                  minWidth: 300,
                  height: 40,
                  onPressed: (){},
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text("Start your community",style: TextStyle(color: Colors.white),),
                ),
              ]
          ),
        ));
  }
}
