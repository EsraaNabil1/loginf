import 'package:login/screens/page2.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


@override
Widget build(BuildContext context) {
  return Scaffold(
    //appbar
appBar: AppBar(
  title: Text("Login"),
  centerTitle: true,
  actions: [
    SizedBox(),
    Icon(Icons.language),
  ],
),
//body
body: ListView(
  children: [
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container( 
              height: 150,
              width: 100,
             child: Image.network('https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png'),
            ),
    ),
    Padding(padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border:OutlineInputBorder( ),
        labelText: 'Enter Your Email',
        labelStyle: TextStyle(color: Colors.grey),
      ),
    ),
    ),
     Padding(
       padding: const EdgeInsets.all(15.0),
       child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter Your Password',
          labelStyle: TextStyle(color: Colors.grey),
    ),
       ),
     ),
     Padding(
            padding: const EdgeInsets.only(right: 3),
            child: MaterialButton(
                child: Text("Forgot Password"),
                textColor:Colors.grey, 
                onPressed: (){}
            ),
           ),
      Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
                color: Colors.cyan,
                child: Text("Login"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageTwo(
                              
                            )),
                  );
                }),
          ),
           

  ]
),
  );
}
}