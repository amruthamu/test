import 'package:flutter/material.dart';
import 'package:route_task/secondpage.dart';


class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
appBar: AppBar(
  title: const Text("Routing App"),
),
       body:  Center(
         child: Column(mainAxisSize: MainAxisSize.min ,
           children: [
             const Text('First Page',style: TextStyle(fontSize: 50
             ),),
             TextButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context)=>SecondPage(data:"hello there from firstpage hi")));
             }, child: const Text("Go to page",style: TextStyle(color: Colors.red,fontSize: 30))),
             TextButton(onPressed: (){
               Navigator.of(context).pushNamed('secondPage');
             }, child: const Text("Go to named route",style: TextStyle(color: Colors.yellow,fontSize: 30),)),
             TextButton(onPressed: (){
               Navigator.of(context).pushNamed('/second',arguments: "hello there from firstpage");
             }, child: const Text("Go to generate route",style: TextStyle(color: Colors.blue,fontSize: 30)),



             ),TextButton(onPressed: (){
               Navigator.of(context).push(_createRoute());
             }, child: const Text("Go to page Route",style: TextStyle(color: Colors.green,fontSize: 30),))
           ],
         ),
       ),
     ),
   );
  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SecondPage(data: "anu"),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}