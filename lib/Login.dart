import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{

 final FirebaseAuth _auth = FirebaseAuth.instance;
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

String _email, _password;

checkAuthentification() async
{
  _auth.onAuthStateChanged.listen((user){

if(user!= null)
  {
     Navigator.push(context, MaterialPageRoute(builder:(context)=>Homepage()));
  });

  @override
    void initState()
    {
      super.initState();
      this.checkAuthentification();
    }
}

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Container(
        child: Column(
         children:<Widget>[

      Container(
        height:400,
        child: Image(image:AssetImage("images/login.png"),

        ),
      ),

      Container(),
      ],
    );
  }
}