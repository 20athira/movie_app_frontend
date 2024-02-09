import 'package:flutter/material.dart';

class searchpage extends StatelessWidget {
  const searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(0.6),
          title: Text("Search Movie",
          style: TextStyle(color: Colors.white),),
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
                TextField(
                  decoration: InputDecoration(
                    labelText: "Movie Name",
                    hintText: "Enter the movie name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: (){
                      
                    }, 
                    child: Text("Search")),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("Back to Menu ")),
              ],
            ),
          ),
        ),
    );
  }
}
