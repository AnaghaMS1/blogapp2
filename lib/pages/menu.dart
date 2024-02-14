import 'package:blogapp2/pages/addpost.dart';
import 'package:blogapp2/pages/signup.dart';
import 'package:blogapp2/pages/viewpage.dart';
import 'package:flutter/material.dart';

class menupage extends StatefulWidget {
  const menupage({super.key});

  @override
  State<menupage> createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  @override
  final List<Widget> pages =[
    addpost(),
    signup(),
    addpost(),
  ];
  int currentIndex=0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: pages[currentIndex],
        //navigation bar bottom

        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            print(index);
            setState(() {
              currentIndex=index;
            });
          },
          items: [BottomNavigationBarItem(
            icon:Icon(Icons.add),
            label: "Add post"
        ),
            BottomNavigationBarItem(icon: Icon(Icons.view_comfy_alt),
            label: "View All"),
            BottomNavigationBarItem(icon: Icon(Icons.view_array),
            label: "view my post")
        ],
        ),
      ),
    );
  }
}

