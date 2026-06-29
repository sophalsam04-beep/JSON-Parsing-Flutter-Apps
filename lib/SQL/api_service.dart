import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ApiService{
    
    // Load data from Servers
        Future<void> loadData(String api)async{
              final prefs = await SharedPreferences.getInstance();
                  await prefs.setString("data", api);
              
        }


        // save data from server
        Future<void> saveData()async{
            try {
                final prefs = await SharedPreferences.getInstance();
      await prefs.getString("data");
            } catch (e) {
                Exception("Load the error...!");
            }
        }

        Future<void> refresh(int data)async{
              data = 0;          
        }
}