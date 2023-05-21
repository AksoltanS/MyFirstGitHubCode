import 'package:flutter/material.dart';

class MyPraktika extends StatefulWidget {
  const MyPraktika({super.key});

  @override
  State<MyPraktika> createState() => _MyPraktikaState();
}

class _MyPraktikaState extends State<MyPraktika> {
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                 Row(
                      children: [
                        Column(
                           crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text('Hi my name is Guncha',
                            style: TextStyle(fontSize: 10,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w500),),
              Text("I'm a freelance UX/UI Designer",maxLines: 1,
                 style: TextStyle(fontSize: 10,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w600)),
                 Text('with a marketing background',maxLines: 1,
                 style: TextStyle(fontSize: 10,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w600)),
                 Text('specializing in Shopify & Webflow.',maxLines: 1,
                 style: TextStyle(fontSize: 10,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w600)),
                  SizedBox(height: 20),
            Row(children: [
              Container(
                alignment: Alignment.center,
              width: 70,
              height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
           color: Color.fromRGBO(255, 255, 255, 1),
         border: Border.all(
       color: Color.fromRGBO(126, 0, 106, 1)),
      ),
        child: Text(' My Work', style: TextStyle( fontSize: 15,color: Color.fromRGBO(126, 0, 106, 1)))),
          Padding(
            padding: const EdgeInsets.only(left:25),
            child: Container(
                  alignment: Alignment.center,
                width: 70,
                height: 30,
                decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
             color: Color.fromRGBO(126, 0, 106, 1),
                   border: Border.all(
                 color: Color.fromRGBO(126, 0, 106, 1)),
                ),
                  child: Text(' Lets Talk', style: TextStyle( fontSize: 15,color: Color.fromRGBO(255, 255, 255, 1))),),
          )
         ],)
            ], ),
Padding(
  padding: const EdgeInsets.only(left: 30),
  child:  
   Container(color: Colors.black,
  width: MediaQuery.of(context).size.width/4,
   height: 100,
  child: Image.asset('assets/gunca.jpg',
  fit: BoxFit.fill,)),
)
                      ],
                    ), ],
              ),
            )
          ]) ,),
        
      ], ) ,
    );
  }
}