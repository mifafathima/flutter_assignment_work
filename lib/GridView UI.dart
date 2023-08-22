import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridVieww01(),
  ));
}
class GridVieww01 extends StatelessWidget {

  var images = [
    "https://media.istockphoto.com/id/952079442/photo/female-leather-bag.webp?b=1&s=170667a&w=0&k=20&c=bV57JWallZX99GCX9-Wj7qRfu8z88h8wqak6jiG8icA=",
    "https://images.unsplash.com/photo-1577803645773-f96470509666?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3VuZ2xhc3Nlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/id/1068843992/photo/luxury-watch-isolated-on-white-background-with-clipping-path-gold-watch-women-watch-female.webp?b=1&s=170667a&w=0&k=20&c=dmdny56LLRNpW_l4oQ1LyWtDBqBB4APRHlKaqOz7uZY=",
    "https://images.unsplash.com/photo-1618274158630-bc47a614b3a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGhpZ2glMjBoZWVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/id/1317457980/photo/beautiful-girl-wearing-golden-jewerly-a-golden-necklace-and-golden-rings.jpg?s=612x612&w=0&k=20&c=4cPQmuaYcoNUZ8xWjRVplRij_dwLHnU2r7We4JReJI4=",
    "https://images.unsplash.com/photo-1609178016676-dfbdbdeaddbb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhbm5lbCUyMHBlcmZ1bWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  ];
  var name = [
    "Lavie",
    "Stella",
    "Fossil",
    "Givenchy",
    "Oralia green",
    "Channel",
  ];
  var price =[
    "\$120",
    "\$50",
    "\$250",
    "\$300",
    "\$80",
    "\$5540"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white60,
        centerTitle: true,
        title: const Text("S H E I N",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          Icon(Icons.search,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.share,color: Colors.black,),
          SizedBox(width: 10,)
        ],
        leading: Icon(Icons.menu,color: Colors.black,),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5
        ),
        itemBuilder: (context,index){
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0,0,0,12),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          child: Image.network(images[index],
                            width: 100,
                            height: 150,
                            fit: BoxFit.cover,
                          ),

                        ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                            child: Text(name[index],style: GoogleFonts.playfairDisplay(
                                fontSize: 30
                            ),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                            child: Text(price[index],style: GoogleFonts.yanoneKaffeesatz(),),
                          ),
                        ],
                      ),
                    ),



                  ],

                ),
              ));
        },itemCount: 6,
      ),
    );
  }
}
