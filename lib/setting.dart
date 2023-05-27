import 'package:flutter/material.dart';

import 'appBarlogin.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final List lists = [
    ['Dil', 'Turkmence'],
    ['Wersiya', '3.3.5'],
    ['Duzgunama', 'Okap tanys'],
    ['Habarlasmak ucin', ''],
    ['Paylasmak', '']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image(image: AssetImage('assets/f7.jpg')),
                Text(" Zehinli \n zenan", style: TextStyle( color: Colors.purple),),
                ]),
                
                SizedBox(height: 20,),
                TextButton(
               style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 30)
            ),
          onPressed: ()  { setState(() {
             Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignupPage()));
          });
          },
          child: Text("Ulgama gir")),
          Divider(),
          SizedBox(height: 20,),
          ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: lists.length,
            itemBuilder: (_,index)=> ListTile(
              title: Text(lists[index][0]),
              trailing: Text(lists[index][1]),
            ))
        ]),
      ),
    );
  }
}
