import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Page Homr"),),
    body: Center(child: Text('Page Home',style: TextStyle(fontSize: 22),),),
   );
  }
  
}