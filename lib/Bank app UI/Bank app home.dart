import 'package:flutter/material.dart';

import 'Grid Widget.dart';
import 'List Widget.dart';
import 'Profile Widget.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: New_UI(),
  ));
}

class New_UI extends StatelessWidget {
  const New_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        //scrollDirection: Axis.vertical,
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.menu),
            centerTitle: true,
            title: Text("Welcome! MAUSAM"),
            actions: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.qr_code_2),
              )
            ],
          ),
          
          SliverList(delegate: SliverChildListDelegate([
            ProfileWidget(),
            const SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.flare_outlined,color: Colors.red.shade900,),
                const SizedBox(width: 10,),
                const Text("WOULD YOU LIKE TO?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)),
              ],
            ),
            GridWidget(),
            const SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.flare_outlined,color: Colors.red.shade900,),
                const SizedBox(width: 10,),
                const Text("LAST TRANSACTIONS",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
            const SizedBox(height: 20,),
            ListWidget()
            // SliverList(
            //
            //   delegate: SliverChildBuilderDelegate(
            //         (BuildContext context, int index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         color: Colors.lightBlue[100 * (index % 9)],
            //         child: Text('List Item $index'),
            //       );
            //     },
            //   ),
            // ),
            // ListView(
            //   padding: EdgeInsets.zero,
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   children:
            //     List.generate(5, (index) =>ListTile(
            //       leading: Container(
            //         color: Colors.red,
            //       ),
            //     ))
            // )


          ],
          )
          )
        ],
      );

  }
}
