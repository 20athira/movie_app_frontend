import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieapp/model/viewmodel.dart';


class viewapiservice{
  Future<dynamic> sendbutton(
      String moviename,moviedescription,moviedirector,movieactor
      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/movies/add");
    var response=await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>{

         "moviename":moviename,
         "moviedescription":moviedescription,
         "moviedirector":moviedirector,
         "movieactor":movieactor
        }
        )
    );
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("Failure");
    }
  }



  Future<List<Viewall>> getView() async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/movies/viewall");
    var response=await client.get(apiUrl);
    if(response.statusCode==200)
    {
      return viewallFromJson(response.body);
    }
    else
    {
      return [];
    }
  }
}