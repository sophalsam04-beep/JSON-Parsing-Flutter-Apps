

// Json Parsing

    // Json Decoded


            // Mannual Parsing

import 'dart:convert';

class User{
    final int id;
    final String name;
    final String email;

    User({
        required this.id,
        required this.name,
        required this.email

    });

    // Mannual Parsing
           // Converting string to Maps
          factory User.fromJson(Map<String,dynamic> json){
                return User(
                  id: json['id'] as int,
                   name: json['name'] as String,
                    email: json['email'] as String
                    );
          }


          // Converting Object from Maps
          Map<String,dynamic> toJson(){
              return {
                  'id' : id,
                  'name' : name,
                  'email' : email,
              };
          }


}

void ParseExample(){
        // store data
        String rawString = '{"id" : 1, "name" : "Un virak", "email" : "sophalsam04@gmail.com"}';

        // Step 1 : JsonDecoded raw text into Maps
              Map<String,dynamic> dataMap = jsonDecode(rawString);

        
        // Step 2 : Passing the maps into model class
              User users = User.fromJson(dataMap);

}

  // 2.Automations Code generations


      // Parsing Json List

  String rawJsonList = '[{"id" : 101, "name" : "Un virak", "email" : "sophalsam04@gmail.com"}]';

      // API return single object

  List<dynamic> parsingLists = jsonDecode(rawJsonList);
      List<User> users = parsingLists.map((e) => User.fromJson(e)).toList();