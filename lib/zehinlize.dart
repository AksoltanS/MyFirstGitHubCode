import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Mycaus extends StatefulWidget {
  const Mycaus({super.key});
  @override
  State<Mycaus> createState() => _MycausState();
}
class _MycausState extends State<Mycaus> {
  List a=[
    'Terjimeler',
    'Audio,wideo,foto',
    'Dizaýn',
    'Biznes',
    'Sosial media',
    'Programmirlemek we  IT'
    ];
    List b=[
      'assets/freelance3.jpg',
      'assets/freelance4.jpg',
      'assets/freelance2.jpg',
      'assets/freelance.jpg',
      'assets/pic.jpg',
      'assets/IT.jpg',
    ];

  List d=[
    'assets/gyrat.jpg',
    'assets/talyp.jpg',
    'assets/reklama.jpg',
    
  ];
  List products = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
       body:
            CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                snap: false,
                expandedHeight: 150,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      CarouselSlider.builder(
                        options: CarouselOptions(
                            height:  400,
                            aspectRatio: 1,
                            autoPlay: true,
                            autoPlayAnimationDuration: Duration(seconds: 1),
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            autoPlayCurve: Curves.easeOutQuint,
                            ),
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) {
                          return  Image.asset(d[index],
                            fit: BoxFit.fill, 
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                          );
                        },
                        itemCount: d.length,
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: d
                              .map((e) => Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          SliverPadding(padding: EdgeInsets.only(top: 10)),
             SliverGrid( 
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             Container(
                              width: 250,
                              height: 150,
                              child: Image.asset(b[index],fit: BoxFit.fill,)),
                              Text(a[index],style: TextStyle(fontSize: 20),),
                          ],
                        ),
                          ),
                      childCount: a.length), 
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10)),
            ],),
      ),
    );
  }

}