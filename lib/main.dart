import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey,
            actions: [Text("data"), Icon(Icons.person)],
            title: Icon(Icons.abc_sharp),
            centerTitle: true,
            leading: Text(
              "data",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            )),
        body: Text(
          "Tac",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.red),
        )),
  ));
}