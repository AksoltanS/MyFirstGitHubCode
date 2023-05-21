
import 'package:flutter/material.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
           body: CustomScrollView(slivers: [
        SliverAppBar(
          floating:true,
            snap: true,
            pinned: true,
            expandedHeight:MediaQuery.of(context).size.width/2.5,
           flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/main.jpg",
                fit: BoxFit.fill,
              ),
            ),
        ),
       // SizedBox(height: 10),
         SliverList(delegate:SliverChildListDelegate([
            Column(
              children: [
                Text('Hi my name is Guncha')
              ],
            )
          ]) ,),
        
      ], ) ,
    );
  }
}


