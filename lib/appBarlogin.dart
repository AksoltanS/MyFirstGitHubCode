import 'package:flutter/material.dart';
import 'mylogin.dart';
import 'size.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
         backgroundColor: Colors.white,
          toolbarHeight: 60,
          leading:IconButton( onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black54,)),
          title: const Text("Yza dolanmak",style:TextStyle(color: Color.fromARGB(255, 29, 25, 25)) ,),
        bottom: TabBar(
                labelColor: Color.fromRGBO(255, 20, 29, 1),
                unselectedLabelColor:Color.fromRGBO(97, 97, 97, 1) ,
                labelStyle: TextStyle(fontSize: 12),
              tabs: [
                  Tab(                  
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only( right: 10),
               child: 
               Icon(Icons.arrow_circle_right),
                          ),
                          Text("Içeri gir", style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500,),
                          textScaleFactor: ScaleSize.textScaleFactor(context)),
                        ],
                      ),
                  ),
                 Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only( right: 10),
                          child: Icon(Icons.person_add_alt_1_rounded),
                        ),
                        Text("Agza bol", style: TextStyle(fontSize: 12,fontWeight:FontWeight.w500,)),
                      ],
                    ),
                  ),
                ]), ),
                body: LoginPage(),
      )
    );
  }
}
