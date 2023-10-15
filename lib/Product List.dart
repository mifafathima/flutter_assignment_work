import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductList(),
  ));
}

class ProductList extends StatelessWidget {

  var image = [
    "assets/icons/aplle.png",
    "assets/icons/mango.png",
    "assets/icons/banana.png",
    "assets/icons/grapes.png",
    "assets/icons/melon.png",
    "assets/icons/avacado.png",
    "assets/icons/strawberry.png",
    "assets/icons/kiwi.png",
    "assets/icons/pineaple.png"
  ];
  var name = [
    "Name : Apple",
    "Name : Mango",
    "Name : Banana",
    "Name : Grapes",
    "    Name : Melon   ",
    "    Name : Avocado",
    "Name : Berry",
    "Name : Kiwi",
    "      Name : PineApple",

  ];

  var unit = [
    " Unit     : Kg      ",
    " Unit     : Doz     ",
    " Unit     : Doz     ",
    " Unit     : Kg      ",
    " Unit     : Kg      ",
    " Unit     : Kg      ",
    " Unit     : Kg      ",
    " Unit     : Pc      ",
    " Unit     : Pc      ",

  ];
  var price = [
    " Price    : \$20    ",
    " Price    : \$40    ",
    " Price    : \$10    ",
    " Price    : \$25    ",
    " Price    : \$30    ",
    " Price    : \$40    ",
    " Price    : \$25    ",
    " Price    : \$15    ",
    " Price     : \$20    ",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Product List",
          style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.redAccent,
        actions: const [
          Icon(Icons.shopping_cart),
          SizedBox(width: 15,)
        ],
      ),
      body:
      ListView(
        children:
          List.generate(9, (index) => Card(
            color: Colors.amberAccent,
            child: ListTile(
              horizontalTitleGap:30,
              leading: Image(image: AssetImage(image[index])),
              title: Padding(
                padding: const EdgeInsets.only(right:90),
                child: Column(
                  children: [
                    Text(name[index]),
                    Text(unit[index]),
                    Text(price[index]),
                  ],
                ),
              ),
              trailing:ElevatedButton(onPressed: (){},
                child: const Text("Add to Cart"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent)),),
            )

            )
              
            ),
          ));
  }
}
