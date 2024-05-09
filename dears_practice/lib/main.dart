import 'package:flutter/material.dart';
import 'package:dears_practice/dio_server.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: Text('안녕'),
      // home: Icon(Icons.star),
      home: Scaffold(
        appBar: AppBar(
          title : Text("Dears")
        ),

        body: Container(
          color: Colors.grey,

        ),

        bottomNavigationBar: BottomAppBar(
          child : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  server.getReq();
                  print("Phone icon tapped");
                },
                child: Icon(Icons.phone),
              ),
              GestureDetector(
                onTap: () {
                  server.postReq();
                  print("Message icon tapped");
                },
                child: Icon(Icons.message),
              ),
              GestureDetector(
                onTap: () {
                  server.getReqWzQuery();
                  print("Contact page icon tapped");
                },
                child: Icon(Icons.contact_page),
              ),
            ],
          )
        )
      )

    );

  }
}
