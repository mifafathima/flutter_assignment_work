import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerUI(),
  ));
}

class DrawerUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Profile",style: GoogleFonts.dmSerifText(
            color: Colors.black,
            fontSize: 30
          )),
        ),
        drawer: Drawer(
            child: Container(
                decoration:  BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.white70,Colors.pink, Colors.black])),
                child: Container(
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      const ListTile(
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRriiOkMsGax7txnLXH370xfbVkfhJDgQxaZg&usqp=CAU")),
                        title: Text(
                          "Elon Musk",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Chief Executive Officer of Tesla Motors",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.space_dashboard_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Dashboard",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.leak_add_sharp,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Leads",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.people_rounded,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Clients",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.rocket_launch_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Projects",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.accessibility,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Patients",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Subscription",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.payments_rounded,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Payments",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        title: Text(
                          "User",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.local_library,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Library",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // SizedBox(
                      //   width: 100,
                      //   height: 30,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: Text("Logout"),
                      //     style: ButtonStyle(
                      //       backgroundColor:
                      //           MaterialStateProperty.all(Colors.redAccent),
                      //     ),
                      //   ),
                      // )
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.grey),
                          backgroundColor: Colors.pinkAccent,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: const Size(50, 40),
                        ),
                        onPressed: () {},
                        child: const Text('Logout'),
                      )
                    ],
                  ),
                ))),
      body:Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage("https://assets.bwbx.io/images/users/iqjWHBFdfxIU/ipvFwN.vBaC8/v1/1200x800.jpg"))
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Elon Musk",style: GoogleFonts.ysabeau(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 20,
            ),
            Text("Elon Reeve Musk, born June 28, 1971) is a business magnate and investor.Musk is the founder,"
                "chairman, CEO and chief technology officer of SpaceX, angel investor,CEO and product architect"
                "of Tesla, Inc., owner and CTO of Twitter,founder of the Boring Company, a co-founder of Neuralink"
                "and OpenAI, and the president of the Musk Foundation. "
                "He is the wealthiest person in the world, with an estimated net worth of US \$239 billion "
                "as of July 2023, according to the Bloomberg Billionaires Index, and \$248.8 billion according"
                " to Forbes,  primarily from his ownership stakes in Tesla and SpaceX. "
                "Musk was born in Pretoria, South Africa, and briefly attended the University of Pretoria before "
                "moving to Canada at age 18,acquiring citizenship through his Canadian-born mother.[6] Two years "
                "later, he matriculated at Queen's University in Kingston, Ontario. Musk later transferred to the "
                "University of Pennsylvania, and received bachelor's degrees in economics and physics there. He moved"
                " to California in 1995 to attend Stanford University.",textAlign: TextAlign.left,style: GoogleFonts.philosopher(),)
          ],
        ),
      ),
    );

  }
}
