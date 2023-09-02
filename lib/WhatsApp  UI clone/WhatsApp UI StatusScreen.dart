import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StatusScreen_UI(),
  ));
}

class StatusScreen_UI extends StatelessWidget {
  var name = [
    "John Lucas",
    "Ann mary",
    "suzen D'souza",


  ];
  var name2 = [
    "Milli florence",
    "Michele rine",
    "Harry Styles",
    "Michale Moronno",
    "Michale Davis",
    "Karl james",

  ];
  var time = [
    "Today,7:48 AM",
    "Today,5:02 AM",
    "Today,12:00 AM",


  ];
  var time2 = [
    "Yesterday,9:20 PM",
    "Yesterday,1:15 PM",
    "Yesterday,10:01 AM",
    "Yesterday,7:32 AM",
    "Yesterday,10:02 PM",
    "Yesterday,10:15 PM",
  ];
  var image = [
    "https://images.unsplash.com/photo-1687707802925-fce5cde1e9d2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfEJuLURqcmNCcndvfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1692029861107-991b13db6ad0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1644963300407-02c7644d9963?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM4fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",

  ];
  var image2 = [
    "https://images.unsplash.com/photo-1684847625002-e61a864ce2e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDc1fFM0TUtMQXNCQjc0fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1591035897819-f4bdf739f446?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZyaWVuZHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/id/1328257396/photo/happy-friendship-day-background.jpg?s=612x612&w=0&k=20&c=k4B-rdPy7VJT46d2alEZWlhkuyfCz7LigLrcMv3WMzI=",
    "https://images.unsplash.com/photo-1691862337281-24532802bad5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDk0fDZzTVZqVExTa2VRfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1684459631796-15c1bb30c8ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDgzfF9oYi1kbDRRLTRVfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1685633224598-1a6d02a1916c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEyMnx4alBSNGhsa0JHQXx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            ListTile(
              leading: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF25D366),
                      width: 2,
                    )
                ),
                child: Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black54,
                        width: 2,
                      )
                  ),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1692456450025-6593434a2aa2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIxfHRvd0paRnNrcEdnfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                  ),
                ),
              ),
              title: const Text("My status"),
              subtitle: const Text("Just now"),
              trailing: const FaIcon(FontAwesomeIcons.ellipsis),

            ),
            const SizedBox(height: 17,),
            Container(
              height: 20,
              width: double.infinity,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Recent Updates"),
              ),
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 12),
                  leading: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF25D366),
                            width: 2,
                          )
                      ),
                      child: Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image[index]),
                        ),
                      )
                  ),
                  title: Text(name[index]),
                  subtitle: Text(time[index
                  ]
                  )
                  ,
                );
              },itemCount: 3,
              ),
            ),
            Container(
              height: 20,
              width: double.infinity,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20,),
                child: Text("Viewed Updates"),
              ),
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          )
                      ),
                      child: Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image2[index]),
                        ),
                      )
                  ),
                  title: Text(name2[index]),
                  subtitle: Text(time2[index
                  ]
                  )
                  ,
                );

              },itemCount: 6,
              ),
            ),

          ]
      ),
      floatingActionButton:  FloatingActionButton(
          backgroundColor: Colors.teal,
          child: const Icon(Icons.camera_alt),
          onPressed: (){}
      ),
    );
  }
}
