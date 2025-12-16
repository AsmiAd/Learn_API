import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learn_api/models/create_job_model.dart';
import 'package:learn_api/models/list_post_with_model.dart';
import 'package:learn_api/models/login_model.dart';
import 'package:learn_api/models/multi_data_model.dart';
import 'package:learn_api/models/single_post_with_model.dart';

class ApiServices {
  // With Model
  Future<SinglePostWithModel?> getSinglePostWithModel() async {
    try {
      var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
      );
      if (response.statusCode == 200) {
        SinglePostWithModel model = SinglePostWithModel.fromJson(
          json.decode(response.body),
        );
        return model;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  // WithOut Model
  Future<dynamic> getSinglePostWithoutModel()async{
    try{

      var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
      if(response.statusCode == 200){
        final data = jsonDecode(response.body);
        return data;
      }
    }catch (e){
      print(e.toString());
    }
    return null;
  }

  // List of Posts With Model
  Future<List<PostModel>?> getPostWithModel()async{

    try{
      var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if(response.statusCode == 200){
        List<PostModel> model = List<PostModel>.from(json.decode(response.body).map((x)=> PostModel.fromJson(x)));
        return model;
      }
    }catch (e){
      print(e.toString());
    }
    
    return null;
  }


  // List of Posts WithOut Model
  Future<dynamic> getPostWithOutModel()async{

    try{
      var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if(response.statusCode == 200){
        final model = jsonDecode(response.body);
        return model;
      }

    }catch (e){
      print(e.toString());
    }

    return null;
  }

  
  //Multi With Model
  Future<MultiData?>  getMultiDataWithModel() async{
    
    try{
    var response =  await http.get(Uri.parse("https://reqres.in/api/unknown"));
      if(response.statusCode == 200){
        MultiData model = MultiData.fromJson(json.decode(response.body));
        return model;
      }
    }catch (e){
      print(e);
    }
    return null;
  }


  //Multi Without Model
  Future<dynamic>  getMultiDataWithOutModel() async{

    try{
      var response =  await http.get(Uri.parse("https://reqres.in/api/unknown"));
      if(response.statusCode == 200){
        final model = jsonDecode(response.body);
        return model;
      }
    }catch (e){
      print(e);
    }
    return null;
  }


  // Login With Model
  Future<LoginModel?> loginWithModel( String email, String password)async{
    
    try{
      var url = Uri.parse("https://reqres.in/api/login");
      var response = await http.post(url, body: {
        "email": email,
        "password": password
      });


      if(response.statusCode == 200){
        LoginModel model = LoginModel.fromJson(jsonDecode(response.body));
        return model;
      }
    }catch (e){
      print(e);
    }
    return null;
  }



  // Login Without Model
  Future<dynamic> loginWithOutModel( String email, String password)async{

    try{
      var url = Uri.parse("https://reqres.in/api/login");
      var response = await http.post(url, body: {
        "email": email,
        "password": password
      });


      if(response.statusCode == 200){
        final model = jsonDecode(response.body);
        return model;
      }
    }catch (e){
      print(e);
    }
  }


  //Creat Job
  Future<CreateJobModel?> createJob(String name, String job) async{
    
    
    try{
      
      var url = Uri.parse("https://reqres.in/api/users");
      
      var response = await  http.post(url, body: {
        "name": name,
        "job": job
      });

      if(response.statusCode == 201 || response.statusCode == 200){

        CreateJobModel model = CreateJobModel.fromJson(jsonDecode(response.body));
        return model;

      }


    }catch (e){
      print(e);
    }
    return null;
    
  }







}
