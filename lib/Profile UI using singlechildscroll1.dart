import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile1(),
  ));
}

class Profile1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        actions: [
          const Icon(Icons.filter_list_outlined,color: Colors.black,)
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRriiOkMsGax7txnLXH370xfbVkfhJDgQxaZg&usqp=CAU"),
              radius: 60.0,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/facebook.png", height: 35, width: 35,),
                const SizedBox(
                  width: 20,
                ),
                Image.asset("assets/icons/google1.png", height: 35,
                  width: 35,
                  color: Colors.red,),
                const SizedBox(
                  width: 20,
                ),
                Image.asset("assets/icons/twitter.png", height: 35, width: 35),
                const SizedBox(
                  width: 20,
                ),
                Image.asset("assets/icons/linkedin.png", height: 35, width: 35)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Chromicle", style: GoogleFonts.abrilFatface(
                fontSize: 30
            )),
            const Text("@amFOSS"),
            const SizedBox(
              height: 30,
            ),
            Text("Mobile App Developer and open source enthusiastic",
              style: GoogleFonts.zillaSlab(
                  fontSize: 20
              ),),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                      Container(
                        width: 350,
                        height: 40,
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white60,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),
                              padding: const EdgeInsets.all(16)
                            ),
                            child:  const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.privacy_tip,color: Colors.black,),
                                Text("Privacy",style: TextStyle(fontSize: 20,color: Colors.black,),),
                                Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                              ],
                            )
                        ),
                      ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 350,
                          height: 40,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: const EdgeInsets.all(16)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.access_time_filled_sharp,color: Colors.black,),
                                  Text("Purchase History",style: TextStyle(fontSize: 20,color: Colors.black,),),
                                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                                ],
                              )
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 350,
                          height: 40,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: const EdgeInsets.all(16)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.help,color: Colors.black,),
                                  Text("Help & Support",style: TextStyle(fontSize: 20,color: Colors.black,),),
                                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                                ],
                              )
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 350,
                          height: 40,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: const EdgeInsets.all(16)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.settings,color: Colors.black,),
                                  Text("Settings",style: TextStyle(fontSize: 20,color: Colors.black,),),
                                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                                ],
                              )
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 350,
                          height: 40,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: const EdgeInsets.all(16)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.person_add_alt_1,color: Colors.black,),
                                  Text("Invite a Friend",style: TextStyle(fontSize: 20,color: Colors.black,),),
                                  Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,)
                                ],
                              )
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: 350,
                          height: 40,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white60,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: const EdgeInsets.all(16)
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 // Icon(Icons.logout,color: Colors.black,),
                                  Text("Logout",style: TextStyle(fontSize: 20,color: Colors.red,)),
                                 // Icon(Icons.access_time_filled_sharp,color: Colors.white70,)
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 20,),

                      ],

                )
                ),
              ),
            )],
        ),
      ),
    );
  }
}
