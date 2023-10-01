import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  var gridimage =[
    "https://cdn4.iconfinder.com/data/icons/mobile-applications-1/155/vector_327_20-512.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj9yaEFXQvaM2n1eHqZQsZlayo-PYHRgYaNA&usqp=CAU",
    "https://cdn0.iconfinder.com/data/icons/finance-and-money-6/128/4-512.png",
    "https://cdn3.iconfinder.com/data/icons/banking-and-finance-1-22/66/51-512.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Ol3zjxOHc_4q4rCZQRBhX-X6h8vZuF8EwetdRdkM60Yxg0FBkPa4bSihoQiK8kVrlCw&usqp=CAU",
    "https://media.istockphoto.com/id/1173435018/vector/qr-code-scanning-on-mobile-phone.jpg?b=1&s=170x170&k=20&c=qrfLrtbWErXsjsf3fXlPcwzAgYOgu05YRLH-a5aGrDo="
  ];
  var gridtext =[
    "My Account",
    "Load eSewa",
    "Payment",
    "Fund Transfer",
    "Schedule Payment",
    "Scan To Pay"

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Card(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: NetworkImage(gridimage[index]),height: 70,),

                    Text(gridtext[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                  ],
                ),

              ),
            ),
          );
        },itemCount: 6,);
  }
}
