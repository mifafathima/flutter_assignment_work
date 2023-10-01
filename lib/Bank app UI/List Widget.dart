import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  var listdate =[
    "10-03-2023",
    "27-03-2023",
    "03-05-2023",
    "16-05-2023",
    "04-06-2023",
  ];
  var listamount =[
    "NPR.10,000.00",
    "NPR.11,000.00",
    "NPR.9,840.00",
    "NPR.15,000.00",
    "NPR.26,000.00",

  ];

 ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 500,

      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children:
          List.generate(5, (index) => Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            child: Row(
              children: [
                const SizedBox(width: 1,),
                Container(
                  height: 70,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red.shade900,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))

                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("CWDR/",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Row(

                      children: [
                        const Text("974884/9874513356479865",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 170,),
                        Text(listamount[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Text(listdate[index],style: const TextStyle(fontSize: 13),),
                  ],
                )



              ],
            )
          ))

      ),
    );
  }
}
