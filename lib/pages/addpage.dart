import 'package:flutter/material.dart';
import 'package:movieapp/service/viewservice.dart';

class addpage extends StatefulWidget {
  const addpage({super.key});

  @override
  State<addpage> createState() => _addpageState();
}

class _addpageState extends State<addpage> {
  final TextEditingController moviename=new TextEditingController();
  final TextEditingController moviedescription=new TextEditingController();
  final TextEditingController moviedirector=new TextEditingController();
  final TextEditingController movieactor=new TextEditingController();
  // final TextEditingController visitorpurpose=new TextEditingController();
  void SendValuestoApi()async{
    final response=await viewapiservice().sendbutton(
        moviename.text,
        moviedescription.text,
        moviedirector.text,
        movieactor.text);

    if(response['status']=='sucess')
    {
      print("Sucessfully added");
    }
    else{
      print("Error");
    }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(0.6),
          title: Text("Add Movie",
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
                  controller: moviename,
                  decoration: InputDecoration(
                    labelText: "Movie name",
                    hintText: "Enter Movie name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: moviedescription,
                  decoration: InputDecoration(
                    labelText: "Movie Description",
                    hintText: "Enter Movie description",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(height: 10,),
                TextField(
                  controller: moviedirector,
                  decoration: InputDecoration(
                    labelText: "Director",
                    hintText: "Enter director name",
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10,),
                TextField(
                  controller: movieactor,
                  decoration: InputDecoration(
                    labelText: "Director",
                    hintText: "Enter director name",
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: (){

                }, child: Text("Add")),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Back to Menu")),
              ],
            ),
          ),
        ),
    );
  }
}
