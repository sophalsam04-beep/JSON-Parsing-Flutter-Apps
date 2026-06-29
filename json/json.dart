import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:self_learn16/model/fruit.dart';

String jsonData = '''
  [
    {
      "id" : 101,
      "name" : "Coffee",
    },

    {
      "id" : 102,
      "name" : "Capuchino",
    },

    {
      "id" : 103,
      "name" : "Green tea",

    },
  ]

''';

      // convert to json to object
    Map<String,dynamic> jsondata = jsonDecode(jsonData);

    // passing into the model class
        Fruit fruit = Fruit.fromJson(jsondata);
