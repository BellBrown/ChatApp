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
      body:Column(
        children: [
          ChatWidget(
            name: "Ephuwah Brown",
            message: "You are soo beautiful",
            time: "2:00",
            image: "https://images.unsplash.com/photo-1638431254808-57f4a950bf7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          ),
          ChatWidget(
            name: "Ebo Brown",
            message: "You are soo handsome",
            time: "5:00",
            image: "https://images.unsplash.com/photo-1638422379823-ce79ec2db5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", 
          ),
          ChatWidget(
            name: "Adjoa Tic",
            message:"How is Edwin and the children",
            time: "3:30",
            image: "https://images.unsplash.com/photo-1638043881914-4423b7fa7210?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          ),
          ],
      ) ,
    );
  }
}

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key? key, required this.name, required this.message, required this.time, required this.image,
  }) : super(key: key);
  final String name;
  final String message;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading:  CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 30,
          ),
          title:  Text(name),
          subtitle: Row(
            children:  [
             const Icon(Icons.done_all),
              Text(message)
            ],
          ),
          trailing: Text(time),
        ),
      ),

    );
  }
}