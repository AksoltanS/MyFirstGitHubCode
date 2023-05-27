import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'donar.dart';
 void main(List<String> args) {
 runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MyPages()));
}
class MyPages extends StatelessWidget {
 const MyPages({super.key});

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
     // theme: ThemeData.dark(),
     debugShowCheckedModeBanner: false,
      home: MyBottoms(),
   );
  }
}



