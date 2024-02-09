import 'package:flutter/material.dart';
import 'package:movieapp/model/viewmodel.dart';
import 'package:movieapp/service/viewservice.dart';

class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  Future<List<Viewall>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=viewapiservice().getView();

  }
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),
          title: Text("MOVIE LIST"),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (value,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              //leading: Icon(Icons.account_box_rounded),
                              leading: CircleAvatar(
                                child: Text(snapshot.data![index].moviename.toString()[0]),
                              ),
                              title: Text("Name:"+snapshot.data![index].moviename.toString()),
                              subtitle: Text("moviedescription:"+snapshot.data![index].moviedescription.toString()+'\n'+"moviedirector:"+snapshot.data![index].moviedirector.toString()+'\n'+"movieactor:"+snapshot.data![index].movieactor.toString()),
                            ),
                            //Text(snapshot.data![index].vistorName.toString()),
                            //Text(snapshot.data![index].vistorPhone.toString()),
                            //Text(snapshot.data![index].vistorAadhar.toString()),
                            //Text(snapshot.data![index].vistorPlace.toString()),
                            //Text(snapshot.data![index].purposeOfVisit.toString()),

                          ],
                        ),
                      );
                    }
                );
              }
              else
              {
                return CircularProgressIndicator();
              }
            }),


      ),
    );
  }
}