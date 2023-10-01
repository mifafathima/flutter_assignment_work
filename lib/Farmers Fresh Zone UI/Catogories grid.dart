import 'package:flutter/material.dart';

class CatogoriesGrid extends StatelessWidget {

var images = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj8s5CjQhTrjnxu8dLAZ--ou6UFQI9Tb4uXw&usqp=CAU",
  "https://images.unsplash.com/photo-1553395572-0ef353a212bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80",
  "https://media.istockphoto.com/id/585782706/photo/still-life-with-orange.jpg?s=612x612&w=0&k=20&c=Kk-xxGa9L09cbzyslWtnxoGW7zA8CwxQomoFf8IQZzQ=",
  "https://media.istockphoto.com/id/663290808/photo/broccoli.jpg?s=612x612&w=0&k=20&c=h52vxgS7-6t1gRu7HDQycovNxhUUU8Xb406QKbOAOfc=",
  "https://media.istockphoto.com/id/528918196/photo/fresh-chopped-vegetables.jpg?s=612x612&w=0&k=20&c=xcA6kE2Iua-eWDmj9txud1FvPEnHRUpsgOSNeIUo_-E=",
  "https://media.istockphoto.com/id/1003089724/photo/raw-healthy-food-clean-eating-vegetables-source-protein-vegetarians.jpg?s=612x612&w=0&k=20&c=cp5vPh6yMF-fsmQMtWUwFMIATWGvZhUSAU-8K6PichA=",
  "https://media.istockphoto.com/id/675377232/photo/black-pepper-grain-in-the-bowl-on-the-table-in-the-kitchen-healthy-eating-and-lifestyle.jpg?s=612x612&w=0&k=20&c=CDpZxOg3DMsYhhgZkles1LdO8dCCjoRSf_IrOePrEgg=",
  "https://media.istockphoto.com/id/515747088/photo/greek-mediterranean-salad.jpg?s=612x612&w=0&k=20&c=HOYV2DwcNoK9EwKTYj2gdL2mtLldy9VcXe6Vj-LniLU="
];
var gridtext =[
  "Offers",
  "Vegetables",
  "Fruits",
  "Exotic",
  "Fresh Cuts",
  "Nutrition Chargers",
  "Packed Flavours",
  "Gourmet Salads"
];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,

      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Container(
          height: 400,
          width: 200,
          child: Card(
            child: Column(
              children: [
              Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(images[index]))),
              ),
                const SizedBox(height: 10,),
                Text(gridtext[index],style: const TextStyle(fontSize: 15),)
              ]
            )
          ),
        )
      ,itemCount: 8,);
  }
}
