
import 'package:asi/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'TabBarvi.dart';
import 'donar1.dart';
import 'hyzmatlar.dart';
class MyBottoms extends StatefulWidget {
  const MyBottoms({super.key});
 @override
  State<MyBottoms> createState() => _MyBottomsState();
}
int a=0;
class _MyBottomsState extends State<MyBottoms> {
  List pages=[

  ];
  @override
  void initState() {
    pages=[
      Drawer1(),
      Bildiris(),
      Hyzmatlar(),
      Setting()
      ]; 
    super.initState();
  }
  List label=[
   'Başsahypa',
   'Bildirişler',
   'Hyzmatlar',
   'Sazalamalar',
 ];
  List icons=[
    Icon(Icons.home),
    Icon(Icons.announcement),
    Icon(Icons.analytics_outlined),
    Icon(Icons.settings)
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body:pages[a] ,
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: a,fixedColor: Color.fromRGBO(41, 38, 38, 1),
        type:BottomNavigationBarType.fixed,items: [
       for(int i=0;i<icons.length;i++)buttom(icons[i], label[i])
       ],
       onTap: (val){
        debugPrint(val.toString());
        a=val;
        setState(() {  
        });
       },
       ), 
      ),
   ); 
  }
}
buttom(Icon icon, String label){
  return  BottomNavigationBarItem(icon:icon,label: label);
}
