import 'package:asi/appbar.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:  ThemeData(
          primarySwatch: Colors.purple,
         
        ),
    home: MyAppBar()
  ));
}