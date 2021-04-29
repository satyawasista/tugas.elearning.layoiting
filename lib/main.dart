import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
  

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'login',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black
        ),
        home: Login(),
      );
    }
  }
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Colors. white12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              width: 100,
              height:100,
              decoration:BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape. circle
              ),

              child: Center(
                child:Icon(Icons.person,size:50, color: Colors.blue,) ,

                ),
            ),

            SizedBox(height: 20,),
            
              Text("SELAMAT DATANG ", style: TextStyle(fontSize: 20,color: Colors.black87),),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    prefixIcon:  Icon(Icons. person, size: 40,),
                    hintText: "Masukan Username",
                    hintStyle: TextStyle(color: Colors.blue),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.blue),
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87) 

                      ),
                    prefixIcon:  Icon(Icons. looks, size: 40,),
                    hintText: "Masukan Password",
                    hintStyle: TextStyle(color: Colors.blue),
                    labelText: "Passsword",
                    labelStyle: TextStyle(color: Colors.blue),
                ),
              ),

              SizedBox(height: 20,),

              Card( 
                color: Colors. black87,
                elevation: 10,
                child: Container(
                  height: 40,
                  width: 100,
                  child: Text ("LOGIN", style: TextStyle(fontSize: 15,color: Colors.blue,),),
                )
              )
          ],),
      ),
    );
  }
}