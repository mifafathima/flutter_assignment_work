import 'dart:js';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70,
          color: Colors.red.shade900,
        ),
        Container(
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
          child: Container(
            height: 160,
            width:550,

            child: Card(
              child:
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red.shade900,
                          width: 3
                        )
                      ),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqTTkqpq_z6DQ7thO6j1Ucw4nCHRWAdr5RX84rtmqljmRoQPMEHSkxrp_aF0QQq6eCtCM&usqp=CAU"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("SAMMUNATI BACHAT KHATA",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 4,),
                        Row(
                          children: [
                            Text("NPR. 1,00,999.35",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                            const SizedBox(width: 10,),
                            const Icon(Icons.remove_red_eye,color: Colors.greenAccent,size: 20,)
                          ],
                        ),
                        const SizedBox(height: 4,),
                        const Text("265372663800988262651",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
