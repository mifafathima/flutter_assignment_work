import 'package:flutter/material.dart';

import 'WhatsApp UI CallScreen.dart';
import 'WhatsApp UI ChatScreen.dart';
import 'WhatsApp UI CommunityScreen.dart';
import 'WhatsApp UI StatusScreen.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: whatsapp_ui(),
  ));
}

class whatsapp_ui extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child:
    Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp",),
        backgroundColor: Colors.teal,
        actions: [
          const Icon(Icons.camera_alt),
          const SizedBox(width: 20,),
          const Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return [
              const PopupMenuItem(child: Text("New group"),),
              const PopupMenuItem(child: Text("New broadcast"),),
              const PopupMenuItem(child: Text("Linked devices"),),
              const PopupMenuItem(child: Text("Starred messages"),),
              const PopupMenuItem(child: Text("Payments"),),
              const PopupMenuItem(child: Text("Settings"),),
            ];
          })
        ],
        bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.zero,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
                  child: Image.asset("assets/icons/people group.png",height: 30,width: 30,color: Colors.white,)),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Text("Chats")),
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                  child: const Text("Status")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: const Text("Calls"))
            ]),
      ),
      body: TabBarView(children: [
        Center(
          child: Community_UI(),
        ),
        Center(
          child: ChatScreen_UI(),
        ),
        Center(
          child: StatusScreen_UI(),
        ),
        Center(
          child: CallScreen_UI(),
        )

      ]),

    ));
  }
}
