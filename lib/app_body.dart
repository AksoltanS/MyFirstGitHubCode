import 'dart:ui';

import 'package:flutter/material.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  bool change = true;
  bool chang = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.width / 2.5,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/main.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          // SizedBox(height: 10),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hi my name is Guncha',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(126, 0, 106, 1),
                              fontWeight: FontWeight.w500),
                        ),
                        
                      

                        Container(
                           width:MediaQuery.of(context).size.width / 2.5,

                          child: Text(
                            '''I'm a freelance UX/UI Designer with a marketing background specializing in Shopify & Webflow.''', textAlign: TextAlign.center,
                            style: TextStyle(
                              
                                fontSize: 15,
                                color: Color.fromRGBO(126, 0, 106, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () =>
                                  setState(() => change = !change),
                              child: Text(" My work",
                                  style: TextStyle(
                                      color: change? Colors.purple
                                          : Colors.white,)),
                                          style: ElevatedButton.styleFrom(
                                    backgroundColor: change ? Colors.white : Colors.purple,
                
                            side: BorderSide(color: Colors.purple)),

                            ),
                            Padding(padding: EdgeInsets.all(15)),
                            ElevatedButton(
                              onPressed: () =>
                                  setState(() => chang = !chang),
                    
                              child: Text("Let's talk",
                                  style: TextStyle(
                                    color: chang? Colors.purple
                                          : Colors.white,
                                    )),
                                            style: ElevatedButton.styleFrom(
                backgroundColor: chang ? Colors.white : Colors.purple,
                
                side: BorderSide(color: Colors.purple)),

                              
                            ),
                            
                      
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                            )
                          ],
                        )
                      ],
                    ),

                    Padding(padding: EdgeInsets.all(10)),
                    Column(
                   children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                     height: 200,
                      child: Image.asset('assets/project.jpg',fit:BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Column(
                       children: [
                        Text("Latest projects ",
                        style: TextStyle(fontSize: 25,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w700)),
                        
                        Text("One-page Personal Website Freelance Markete",
                       style: TextStyle(fontSize:10,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w600)  ),
                       Padding(padding: EdgeInsets.all(2)),
                        Container(
                        width: MediaQuery.of(context).size.width,
                    
                         //alignment: Alignment.center,
                         
                        child: Text('''This was a fully custom website that I designed from scratch  in Figma and then built in Webflow. The aim was to have a friendly, yet professional vibe. The site is very fast with a Google Pagespeed score of  99 and 92 for mobile. ''', style: TextStyle(color: Color.fromARGB(255, 157, 146, 146)),
                         textAlign: TextAlign.center,)), 
                       ], 
                      ),
                    )
                    ],       
                    
                    ),

                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
