import 'package:assignment/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: secondpage(),
  ));
}
class secondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SIGN UP ",style: TextStyle(fontWeight: FontWeight.w900),),
          centerTitle: true,
         // backgroundColor: Colors.green,
        ),
        body:SingleChildScrollView(
            child:MyHome()
        ),
    );
  }

}
class MyHome extends StatefulWidget {


  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child:Column(

        children: [
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Please enter the value";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ("Firstname")
              ),
            ),),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Please enter the value";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ("Lastname")
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the Gender";
                }
                return null;

              },
              decoration: InputDecoration(
                hintText: ("Gender"),

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Requierd";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ("Email")
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              obscureText: true,
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the password";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ("New Password")
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              obscureText: true,
              validator: (value){
                if(value==null ||value.isEmpty){
                  return "Enter the password";
                }
                return null;

              },
              decoration: InputDecoration(
                  hintText: ("Re-Enter the password")
              ),
            ),
          ),
          ElevatedButton(onPressed:(){

            if(formkey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("submitting...")));
            }
          },
              child: Text("LOGIN")
          ),
          TextButton(onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>MyApp()));
          },
            child: Text("<-Go Back",style: TextStyle(color: Colors.black),),)


        ],
      ),

    );
  }
}
