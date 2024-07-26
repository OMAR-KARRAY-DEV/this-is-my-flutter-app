import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myflutterapp/Home.Page.dart';
import 'package:myflutterapp/inscription.page.dart';
import 'package:myflutterapp/authentification.page.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   
  final routes = {
    '/home':(context)=>HomePage(),
    '/inscription':(context)=>InscriptionPage(),
    '/authentification':(context)=>AutentificationPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: InscriptionPage(),
    );
  }
}


