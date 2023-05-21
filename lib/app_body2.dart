import 'package:flutter/material.dart';

class MyPraktika extends StatefulWidget {
  const MyPraktika({super.key});

  @override
  State<MyPraktika> createState() => _MyPraktikaState();
}

class _MyPraktikaState extends State<MyPraktika> {
  bool change = false;
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
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Hi my name is Guncha',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(126, 0, 106, 1),
                                  fontWeight: FontWeight.w500),
                            ),
                            // SizedBox(),
                            Padding(padding: EdgeInsets.all(10)),

                            Text(
                              "I'm a freelance UX/UI Designer\n with a marketing background\n specializing in Shopify & Webflow.",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromRGBO(126, 0, 106, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                            ),

                            Row(
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
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                              color: Colors.black,
                              width: MediaQuery.of(context).size.width / 4,
                              height: 100,
                              child: Image.asset(
                                'assets/gunca.jpg',
                                fit: BoxFit.fill,
                              )),
                        )
                      ],
                    ),


                      SizedBox(height: 20),
                    Row(
                   children: [
                    Container(
                      width: MediaQuery.of(context).size.width/4,
                     height: 100,
                      child: Image.asset('assets/project.jpg',fit:BoxFit.fill,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                       children: [
                        Text("Latest projects ",
                        style: TextStyle(fontSize: 25,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w700)),
                        Text("One-page Personal Website Freelance Markete",
                       style: TextStyle(fontSize:10,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w600)  ),
                       Container(
                        child: Text('''                This was a fully custom website that i 
                         designed from scratch in Figma and then built in Webflow. 
                         The aim was
                         to have a friendly, yet professional vibe. The site is very
                         fast with a Google Pagespeed score of 99 and 92 for
                         mobile.
 
                     ''')), 
                       ], 
                      ),
                    )
                    ],   
                    
                    )





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
