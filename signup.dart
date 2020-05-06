import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  
  final singupDetails = GlobalKey<FormState>();
  String name, email, homeadd, mobile, password, confpassword;
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
         
        appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white10,
        elevation: 0,
        ),


        body: SingleChildScrollView(
                  child: Container(
            
            width: MediaQuery.of(context).size.width,
            //color: Colors.white,
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
             child: Column(
             
              children: <Widget>[
                Text('Create Account', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                Text('Please fill up the form.', style: TextStyle(color: Colors.grey),),
                SizedBox(height: 20.0),

              SingleChildScrollView(
                            child: Form(
                    key: singupDetails,
                  child: Column(
                  children: <Widget>[
                     TextFormField(
                     decoration: InputDecoration(labelText: 'Name:', 
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    labelStyle: TextStyle(color:Colors.grey)),
                     onSaved: (input) => name = input,
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                     decoration: InputDecoration(labelText: 'Email Address:', 
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    labelStyle: TextStyle(color:Colors.grey)),
                    validator: (input) => !input.contains('@') ? 'Not a valid email address!' : null,
                     onSaved: (input) => email = input,
                    ),
                    SizedBox(height: 10.0),
                     TextFormField(
                     decoration: InputDecoration(labelText: 'Home Address:', 
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    labelStyle: TextStyle(color:Colors.grey)),
                    onSaved: (input) => homeadd = input,
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                     decoration: InputDecoration(labelText: 'Mobile Number:', 
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    labelStyle: TextStyle(color:Colors.grey)),
                    onSaved: (input) => mobile = input,
                    ),
                    SizedBox(height: 10.0),
                    
                     TextFormField(
                    decoration: InputDecoration(labelText: 'Password:',focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    labelStyle: TextStyle(color:Colors.grey)),
                    obscureText: true,
                    onSaved: (input) => password = input,
                    ),
                    SizedBox(height: 10.0),
                    
                    TextFormField(
                    decoration: InputDecoration(labelText: 'Confirm Password:',focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    labelStyle: TextStyle(color:Colors.grey)),
                    obscureText: true,
                    onSaved: (input) => password = input,
                    ),

                    SizedBox(height: 30.0),
                      SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: RaisedButton(
                  color: Colors.teal[400],
                  onPressed: submitBtn,
                  child: Text('SIGN UP', style: TextStyle(color: Colors.white, letterSpacing: 2.0)),
                 ),

              ),


                    ],

                  )   ,),
              ),

              ],

              ),
            ),
        ) ,
    );
  }

  void submitBtn(){


  }
}