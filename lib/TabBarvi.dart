import 'package:flutter/material.dart';

class Bildiris extends StatefulWidget {
  const Bildiris({super.key});

  @override
  State<Bildiris> createState() => _BildirisState();
}

class _BildirisState extends State<Bildiris> {

   static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
            length: myTabs.length,
      child: Scaffold(
      appBar: AppBar(
            toolbarHeight: 0,
             backgroundColor:
              Color.fromRGBO(255, 255, 255,1 ),
                 bottom: TabBar(unselectedLabelColor: Colors.grey,labelColor: Colors.red,tabs: [
                Tab(text: "Iş beriji ",),
                Tab(text: "iş gözleýänler ",)
               ]),
          ),
body: TabBarView(
          children: myTabs.map((Tab tab) {
            final String label = tab.text!.toLowerCase();
            return Center(
              child: 
               ListView.builder(
        
         itemCount: 40,
         itemBuilder:((context, index) =>  ListTile(
               title: Image.asset("assets/main.jpg"),
                trailing: Text(" App developer gerek "),
              )
              ),
            ));
          }).toList(),
        )
              
      ),
    );
  }
}







