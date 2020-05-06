import 'package:flutter/material.dart';
import 'package:qpass/signup.dart';

// this is just for the repo purposes.

class Qpass extends StatefulWidget {
  @override
  _QpassState createState() => _QpassState();
}

class _QpassState extends State<Qpass> {
  final formKey = GlobalKey<FormState>();
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 0),
          //decoration: BoxDecoration(border: Border.all(width: 2.0, color: Colors.red)),

          child: Column(
            children: <Widget>[
              CircleAvatar(backgroundImage: AssetImage('assets/avatar.png'),radius: 35.0),
              SizedBox(height: 10.0),
              Text('Welcome Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0)),
              Text('Sign in to continue',style: TextStyle(color: Colors.grey[600])),
              SizedBox(height: 45.0),

              Form(
                key: formKey,
                child: Column(children: <Widget>[


               TextFormField(
                   
                  decoration: InputDecoration(labelText: 'Email Address:', 
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                  labelStyle: TextStyle(color:Colors.grey)),
                  validator: (input) => !input.contains('@') ? 'Not a valid email address!' : null,
                  onSaved: (input) => email = input,
                ),
           

              SizedBox(height: 20.0),
              
              TextFormField(
                
                decoration: InputDecoration(labelText: 'Password:',focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                 labelStyle: TextStyle(color:Colors.grey)),
                obscureText: true,
                onSaved: (input) => password = input,
              ),
              SizedBox(height: 25.0),

              SizedBox(
              width: double.infinity,
              height: 50.0,
              child: RaisedButton(
                  color: Colors.teal[400],
                  onPressed: submitBtn,
                  child: Text('LOGIN', style: TextStyle(color: Colors.white, letterSpacing: 2.0)),
                 ),

              ),
              SizedBox(height: 20.0),
              Text('Forgot password?', style: TextStyle(color:Colors.teal)),
              SizedBox(height: 20.0),



             Row(
               children: <Widget>[

                 Text("Don't you have an account?", 
                 style: TextStyle(
                  color:Colors.grey,
                  fontSize: 15.0),),
                   
                InkWell(
                  child: Text(' Register now', style: TextStyle(color: Colors.teal)),
                  onTap: () {                 
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),
                    );
                    
                  },
                  ),],
             ),


              ],))


            ],
          ),
        ),
      ),
    );
  }



void submitBtn() {
if(formKey.currentState.validate()){
  formKey.currentState.save();
  print(email);
  print(password);

}else{
  print('Butol');
}

} 
  
}

 
