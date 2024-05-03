import 'package:flutter/material.dart';

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
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page),
          ],
        )
        )
      )

    );

  }
}
