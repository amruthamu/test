import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{

  SecondPage({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: const Text("Routing App"
        ),
  ),body:  Center(child: Column(
  children: [
    const Text("second page",style: TextStyle(fontSize: 50),),
    Text(data)
  ],
),),
);
  }
  
}