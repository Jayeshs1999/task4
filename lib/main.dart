import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'nextPage.dart';

void  main(){
  runApp(MyProject());
}

class MyProject extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return myProjectMenu();
  }
}
class  myProjectMenu extends State<MyProject>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my first App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Task3",style: TextStyle(fontFamily: "times new roman"),),
          actions: [
            Icon(Icons.add_call),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.redAccent
                ),
                child: Text("Welcome to MyApp",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily:"times new roman"),textAlign: TextAlign.center,),
              ),
              ListTile(
                title: Text("Home",style: TextStyle(fontSize: 20,fontFamily: "times new roman"),),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("log in/sign in",style: TextStyle(fontSize: 20,fontFamily: "times new roman"),),
                leading: Icon(Icons.login),
              ),
              ListTile(
                tileColor: Colors.lightBlueAccent,
                title: Text("project",style: TextStyle(fontSize: 20,fontFamily: "times new roman"),),
                leading: Icon(Icons.pages_rounded),
              ),
              ListTile(
                title: Text("dashboard",style: TextStyle(fontSize: 20,fontFamily: "times new roman"),),
                leading: Icon(Icons.keyboard_arrow_down_sharp),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Image.asset("images/google.jpg",width:90 ,height: 90,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText:"search",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed:()=> launch("https:://google.com/"),
                    child: Text("Go To Google Site")),
              ),
            ),

            FittedBox(
              child: Row(
                children: [
                  Icon(Icons.add_a_photo,color: Colors.redAccent,),
                  Container(width: 3,),
                  Icon(Icons.add,color: Colors.green,),
                  Container(width: 3,),
                  Icon(Icons.phone,color: Colors.blue,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Builder(builder: (context)=> ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return nextPage();
                  }));
                },
                child: Text("Submit Your Query",
                  style: TextStyle(fontFamily: "times new roman"),),
              )),
            ),

          ],
        ),

      ),
    );
  }
}