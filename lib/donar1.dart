
import 'package:asi/zehinlize.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});
 @override
  State<Drawer1> createState() => _Drawer1State();
}
class _Drawer1State extends State<Drawer1> {
  bool tema= false;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List text=[
    'Aýdymlar',
    'Şekilli aýdymlar',
    'Bagşylar',
    'Premium',
  ];
  List icon=[
    Icons.music_note,
    Icons.play_circle_outline,
    Icons.api,
     Icons.do_not_disturb_on,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
                      iconTheme: IconThemeData(color: Colors.purple),
                      
                      backgroundColor: Color.fromRGBO(255, 255, 255,1 ),
             title: 
             Row(
mainAxisAlignment: MainAxisAlignment.center,
               children:
              [Image.asset("assets/f7.jpg"),
               Padding(padding: EdgeInsets.only(right: 5)),
                Text("Zehinli Zenan", style: TextStyle(color: Color.fromRGBO(126, 0, 106, 1), fontWeight: FontWeight.bold, fontSize: 18),
              ),
               ],
             ),
             centerTitle: true,
          ),
        body:Mycaus()
      );
  }
}
