import "dart:js";

import "package:flutter/material.dart";

void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext Activity) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext Activity) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to 1st Page"),
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.person),
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: username,
              style: TextStyle(color: Colors.deepPurple),
              decoration: InputDecoration(
                labelText: "Name:",
                labelStyle: TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
           
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple
              ),
              onPressed: (){
                Navigator.push(
                  Activity,
                  MaterialPageRoute(
                    builder: (Activity) => SecondPage(
                      name: username.text
                    ))
                );
              },
              child: Text("Let's Go to 2nd Page"),
            )
          ],
        )
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  String? name;
  SecondPage({this.name});
  @override
  Widget build(BuildContext Activity){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Welcome to 2nd Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Hello, $name Happy New Year :)",
          textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple
              ),
            onPressed: (){
              Navigator.pop(Activity);
            }, child: Text("Go Back to 1st Page")
            )
        ],
      ),
    );
  }
}