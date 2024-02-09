import 'package:flutter/material.dart';
import 'package:movieapp/pages/View%20Movie.dart';
import 'package:movieapp/pages/addpage.dart';
import 'package:movieapp/pages/delete.dart';
import 'package:movieapp/pages/edit.dart';
import 'package:movieapp/pages/search.dart';

class menupage extends StatelessWidget {
  const menupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.6),
        title: Text("Movie App Menu",
        style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.blue.withOpacity(0.4),
                    Colors.pink.withOpacity(0.4),
                  ]
              )
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>addpage()));
                  },
                  child: Text("Add Movie")),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>view()));
                  },
                  child: Text("View Movie")),
              SizedBox(height: 10,),
            ],
          ),
        ),
    );
  }
}
