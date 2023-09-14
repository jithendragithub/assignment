import 'package:assignment/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
      runApp(
          MaterialApp(
              home:MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('SIGN IN'),
            centerTitle: true,
          ),
          body:SingleChildScrollView(
            child:(MyCustomForm()),
          ),
        );
  }
}
class MyCustomForm extends StatefulWidget {

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override

  final formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child:Column(
        children: [
          //Padding(padding: EdgeInsets.only(top:100), child:Text("Sign in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
          Padding(padding: EdgeInsets.all(30),
            child: TextFormField(
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Please enter the value";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ("Username")
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(30),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: ("Password")
              ),
            ),
          ),

          ElevatedButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute
              (builder: (context) =>secondpage()));
          },
            child: Text("Login"),
          ),

        ],

      ),


    );
  }
}






