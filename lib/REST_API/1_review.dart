// Learn Connection with REST API In Flutter Apps
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


// Learning REST API CRUD API

    // Get data
    Future<void> getUser()async{
          final respone = await http.get(Uri.parse("api_server.js"), 
          headers: {
              "id" : "101",
              "name" : "Un virak",
              "age" : "28",
          },
          );
    }

    // POST Data
    Future<void> CreateUser()async{
          final respone = http.post(Uri.parse("https://api_service.fetchdata"), headers: {
              "id" : "101",
              "name" : "Un virak",
              "age" : "22",

          },

          body: jsonEncode({
              "name" : "Teacher Un virak",
              "age" : "24",
          },)
          );
    }

    // PUT DATA
    Future<void> updateData()async{
          final respone = await http.put(Uri.parse("https://api_service/fetchdata"), headers: {
              "Content-Type" : "applications/json"
          }, 

          body: jsonEncode({
              "name" : "Sam sophal",
              "age" : "22",
          })
          );
    }


    // DELETE DATA
    Future<void> deleteUser()async{
          final respone = await http.delete(Uri.parse("https://api_service/fetchdata"), headers: {
              "Content-Type" : "applications/json",

          }, body: jsonDecode("fetchdata.js"));
    }