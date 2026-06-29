// Flutter + REST API

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:self_learn16/model/fruit.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // Manually parsing

  @override
  Widget build(BuildContext context) {
    // // Json Data
    Map<String, dynamic> jsonString = {
      "id": 101,
      "name": "Coffee sweet",
      "price": 44,
    };

    // Converting Json string to Object

    Fruit fruits = Fruit.fromJson(jsonString);

    // Flutter + REST API
    // Mannul Parsing

    return Scaffold(
      appBar: AppBar(title: Text("Category", style: TextStyle(fontSize: 35))),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                height: 290,
                child: Card(
                  elevation: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        "https://i.pinimg.com/736x/19/e1/2f/19e12f85fe8f8fc02b801dddd17d960f.jpg",
                        width: 200,
                        errorBuilder: (context, error, stackTrace) {
                          // Place holder error handling
                          return Icon(Icons.error);
                        },
                      ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("ID : 101"),
                            Text("Name : Coffee "),
                            Text("Price : 2\$"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(30),
                height: 290,
                child: Card(
                  elevation: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        "https://i.pinimg.com/736x/19/e1/2f/19e12f85fe8f8fc02b801dddd17d960f.jpg",
                        width: 200,
                        errorBuilder: (context, error, stackTrace) {
                          // Place holder error handling
                          return Icon(Icons.error);
                        },
                      ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("ID : 101"),
                            Text("Name : Coffee "),
                            Text("Price : 2\$"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(30),
                height: 290,
                child: Card(
                  elevation: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        "https://i.pinimg.com/736x/19/e1/2f/19e12f85fe8f8fc02b801dddd17d960f.jpg",
                        width: 200,
                        errorBuilder: (context, error, stackTrace) {
                          // Place holder error handling
                          return Icon(Icons.error);
                        },
                      ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("ID : 101"),
                            Text("Name : Coffee "),
                            Text("Price : 2\$"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
