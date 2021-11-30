import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const chatapp(),
    );
  }
}

class chatapp extends StatelessWidget {
  const chatapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors;
    return Scaffold(
      appBar: AppBar(
        title:const Text("My beginning App"),
        actions:const [
         Icon(Icons.search),Icon(Icons.more), 
        ],
      ),
      body: Center(child: CircleAvatar(
        radius: 70,
        backgroundColor: Colors.blue,
        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1638265437803-59b059b497f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"),
        
        ) ,
    ));
  }
}