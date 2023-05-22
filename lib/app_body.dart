//import 'dart:ui';
import 'package:flutter/material.dart';
class AppBody extends StatefulWidget {
  const AppBody({super.key});
 @override
  State<AppBody> createState() => _AppBodyState();
}
class _AppBodyState extends State<AppBody> {
  bool change = true;
  bool chang = false;
  List a=[
'01',
'02',
'03'
  ];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: false,
            expandedHeight: MediaQuery.of(context).size.width / 2.5,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/main.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                        '''Hi my name is Guncha. I'm a freelance UX/UI Designer with a marketing background specializing in Shopify & Webflow.''', textAlign: TextAlign.center,
                        style: TextStyle( fontSize: 15, color: Color.fromRGBO(126, 0, 106, 1),
                                  fontWeight: FontWeight.w600), 
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
                                        color: change? Colors.purple : Colors.white,)),
                                            style: ElevatedButton.styleFrom(
                                      backgroundColor: change ? Colors.white : Colors.purple,
                   side: BorderSide(color: Colors.purple)),
                                ),
                              SizedBox(width: 30),
                              ElevatedButton(
                                onPressed: () =>
                                    setState(() => chang = !chang),
                       child: Text("Let's talk",
                       style: TextStyle(color: chang? Colors.purple : Colors.white, )),
                           style: ElevatedButton.styleFrom(
                  backgroundColor: chang ? Colors.white : Colors.purple,
                side: BorderSide(color: Colors.purple)),
                   ),
                          ],
                          ),
                  SizedBox(height: 10),
                      Column(
                     children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                       height:  MediaQuery.of(context).size.width / 2.5,
                        child: Image.asset('assets/project.jpg',fit:BoxFit.fill,)),
                         SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: Column(
                         children: [
                          Text("Latest projects ",
                          style: TextStyle(fontSize: 25,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w700)),
                           SizedBox(height: 10),
                          Text("One-page Personal Website Freelance Markete",
                         style: TextStyle(fontSize:10,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w600)  ),
                         SizedBox(height: 10),
                          Container(
                          width: MediaQuery.of(context).size.width,
                        child: Text('''This was a fully custom website that I designed from scratch  in Figma and then built in Webflow. The aim was to have a friendly, yet professional vibe. The site is very fast with a Google Pagespeed score of  99 and 92 for mobile. ''', style: TextStyle(color: Color.fromARGB(255, 157, 146, 146)),
                           textAlign: TextAlign.center,)), 
                         ]),
                      )
                      ],       
                    ),
                      SizedBox(height: 10),
                      Center(
                        child: Text("What I Do ?",
                         style: TextStyle(fontSize: 25,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w700)),
                      ),
                        SizedBox(height: 30),
             Container(
            width:MediaQuery.of(context).size.width*0.7,
              height:  MediaQuery.of(context).size.height ,
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(126, 0, 106, 0.1),),
                child: ListView.builder(
               itemCount: a.length,
                itemBuilder:((context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
            Text(a[index],
                   style: TextStyle(fontSize: 60,color:Color.fromRGBO(126, 0, 106, 1),fontWeight: FontWeight.w700)  ),
                   SizedBox(height: 10),
                   Text('UX\UI Design',
                  style: TextStyle(fontSize: 25,color:Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w700) ),
                   SizedBox(height: 10),
                   Text('''Need help with designing your website? I can create beautiful website designs based on your content.''',
                  style: TextStyle(fontSize: 21,color:Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.w500) ),
                  ]),
                )
                ),
                )
                  ),
           SizedBox(height: 30),
           Container(alignment: Alignment.center,
             width:MediaQuery.of(context).size.width,
              height:  MediaQuery.of(context).size.height/3 ,
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(126, 0, 106, 1),),
            child: Column(children: [
               SizedBox(height: 20),
              Text('Get in touch with us for\n         your service',
             style: TextStyle(fontSize: 25,color:Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w700)  ),
              SizedBox(height: 10),
             Text('''Our company was established 15 July 2011. Since then we have seen a huge growth in turnovers and volumes of operation.
          Our company was established 15 July 2011''',
             style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)), textAlign: TextAlign.center, ),
            ]),
           ),  
            ], ),
            )
              ]),
            ),
              SliverList(
              delegate: SliverChildListDelegate([  Container(
   alignment: Alignment.center,
     width:MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height/10 ,
    color: Color.fromRGBO(242, 230, 240, 1),
  child:Text('© 2023 Ukyply Zenan plaform all Rights Reserved!',
   style: TextStyle(color: Color.fromRGBO(126, 0, 106, 1)),  ) ,
  ),])
)
],
      ),
    );
  }
}
