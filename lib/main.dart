// Json Parsing 
     // Array Json Parsing

import 'dart:convert';

import 'package:self_learn15/model/user.dart';

void main(List<String> args) {
  
  // store data
  String arrayJson = '''
            [
                 {
                      "id" : 101,
                      "name" : "Un virak",
                      "email" : "sophalsam04@gmail.com",

                 },

                 {
                      "id" : 102,
                      "name" : "Dara vy",
                      "email" : "vfdsnjvfesre"             


                 },
                  
                  
              ]
''';

  // JsonDecoded -> Convert Json -> Object
  List<dynamic> jsonList = jsonDecode(arrayJson);

  List<User> users = jsonList.map((e) => User.fromJson(e)).toList();



      for(var user in users){
          print(user.name);
      }

}