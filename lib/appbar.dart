

import 'package:asi/app_body2.dart';
import 'package:flutter/material.dart';
class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return 
  MaterialApp(
        title: ("JAZADE"),
        debugShowCheckedModeBanner: false,
      
       
           home: Scaffold(
                    appBar: AppBar(
                      iconTheme: IconThemeData(color: Colors.purple),
                      
                
                
            backgroundColor: Colors.white,
             title: 
             Column(children: [Text("Ukyply", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 18),
             ), Text("zenan", style: TextStyle(color: Colors.purple, fontSize: 13)),]),
            
            leading:
               Image.asset("assets/loga.jpg"),
             
            actions: [
               PopupMenuButton(
                icon: Icon(Icons.menu),
                itemBuilder: (context) => [
                  PopupMenuItem(
                value: 1,
                
                child:
                Row(children: [Text("Home"),
                ])),
                 PopupMenuItem(
                value: 2,
                
                child:
                Row(children: [Text("Setting"),
                ])),
                 PopupMenuItem(
                value: 3,
                
                child:
                Row(children: [Text("Options"),
                ])),

                
                ],
                onSelected: (item)=>{
                  print(item)
                }),
                              
                               PopupMenuButton(
                icon: Icon(Icons.language),
                itemBuilder: (context) => [
                   PopupMenuItem(
                value: 1,
                
                child:
                Row(children: [
                  Text("TM"),
                ])),
                 PopupMenuItem(
                value: 2,
                
                child:
                Row(children: [Text("EN"),
                ])),
                 PopupMenuItem(
                value: 3,
                
                child:
                Row(children: [Text("RU"),
                ])),
                
                ],
                onSelected: (item)=>{
                  setState(() {
                    
                  }),
                }),
             
               
              

            ],
            
           
            ),
         
          
          body: MyPraktika(),
        ));
  }
}



