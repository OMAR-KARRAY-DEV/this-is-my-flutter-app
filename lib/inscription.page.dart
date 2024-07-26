import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class InscriptionPage extends StatelessWidget{
  late SharedPreferences prefs;
  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Page Inscription"),),
    body:Column(children: 
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
      controller: txt_password,
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
   ), onPressed: () { _onincrire(context); },child: Text('Inscription',style: TextStyle(fontSize: 22),),),
   ),
   TextButton(onPressed: (){
    Navigator.pop(context);
    Navigator.pushNamed(context, '/authentification');
   }, child: Text("J'ai deja un compte"))
  ]));
  }
  
  Future <void> _onincrire(BuildContext context) async{
    prefs=await SharedPreferences.getInstance();
    if(!txt_login.text.isEmpty && !txt_password.text.isEmpty){
      prefs.setString("user", txt_login.text);
      prefs.setString("password", txt_password.text);
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    }
  }
}