import 'package:flutter/material.dart';

class Hyzmatlar extends StatefulWidget {
  const Hyzmatlar({super.key});
@override
  State<Hyzmatlar> createState() => _HyzmatlarState();
}
class _HyzmatlarState extends State<Hyzmatlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        
        Text('Hyzmatlar',style: TextStyle(fontSize:30 ))
      ]),
    );
  }
}