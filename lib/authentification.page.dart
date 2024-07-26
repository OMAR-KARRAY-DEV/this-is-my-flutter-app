import 'package:flutter/material.dart';

class AutentificationPage extends StatelessWidget{
   TextEditingController txt_login = new TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Page Autentification"),),
    body: Column(children: 
    [ Container(padding: EdgeInsets.all(10),
    child: TextFormField(
      controller: txt_login,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: "Utilisateur",
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1),
          borderRadius: BorderRadius.circular(10)
        )
      ),
    ),
    ),
    Container(padding: EdgeInsets.all(10),
    child: TextFormField(
      controller: txt_login,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        hintText: "Mot de passe",
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1),
          borderRadius: BorderRadius.circular(10)
        )
      ),
    ),
    ),
   Container(padding: EdgeInsets.all(10),
   child: ElevatedButton(style: ElevatedButton.styleFrom(
    minimumSize: const Size.fromHeight(50)
   ), onPressed: () {  },child: Text('Connexion',style: TextStyle(fontSize: 22),),),
   ),
  ]),
   );
  }
  
}