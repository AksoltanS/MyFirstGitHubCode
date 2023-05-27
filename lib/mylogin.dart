import 'package:flutter/material.dart';
import 'acarsoz.dart';
import 'size.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
   bool _obscureText = true;
   
  Widget build(BuildContext context) {
    return 
       TabBarView(
          children:[ 
             SingleChildScrollView(
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                          SizedBox(height: 40,),
                           TextField(
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.sentences,
                       decoration: InputDecoration(
                        label: Text('Telefon belgiňiz'),
                         prefixText:"+993",
                      focusedBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.red)),
                       enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                                ),
                                                 ),
                                             ) ,
                              SizedBox(height: 15,),
                               TextFormField(
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: _obscureText,
                        obscuringCharacter: '*',
                       decoration: InputDecoration(
                        label: Text('Açar söz'),
                        suffix:InkWell(
                          onTap: (){
                           debugPrint(_obscureText.toString());
                            setState(() {
                           _obscureText= !_obscureText;
                           });
                          },
                          child: Icon(Icons.remove_red_eye)
                          ) ,
                      focusedBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.red)),
                       enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                                ),
                                                 ),
                                             ) ,
                            SizedBox(height: 20),
                           
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return AcarSoz();
                                }));
                              },
                              child: Text('Açar sözüni unutdym! ', 
                               style: TextStyle(color: Colors.red, fontSize: 15 ), 
                              textAlign: TextAlign.center,textScaleFactor: ScaleSize.textScaleFactor(context) ),
                            ),
                             SizedBox(height: 20,),
                        Container(
                               decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: Colors.black),
                                ),
                                child: MaterialButton(
                                  color: Colors.green.shade500,
                                  minWidth: double.infinity,
                                  height:50,
                                  onPressed: (){},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                  ),
                                  child:
                                  Text("Içeri gir  ",
                                  style: TextStyle( color: Colors.white,  fontSize: 14,), textAlign: TextAlign.center,),
                                  
                                ),
                              ),
                          ],
                    ),
                ),
              ),
            SingleChildScrollView(
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SizedBox(height: 40),
                         TextField(
                      keyboardType: TextInputType.number,
                      textCapitalization: TextCapitalization.sentences,
                     decoration: InputDecoration(
                      label: Text('Telefon belgiňiz'),
                       prefixText:"+993",
                    focusedBorder: const OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.red)),
                     enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                              ),
                                               ),
                                           ) ,
                            SizedBox(height: 15,),
                             TextFormField(
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: _obscureText,
                        obscuringCharacter: '*',
                       decoration: InputDecoration(
                        label: Text('Açar söz'),
                        suffix:InkWell(
                          onTap: (){
                           debugPrint(_obscureText.toString());
                            setState(() {
                           _obscureText= !_obscureText;
                           });
                          },
                          child: Icon(Icons.remove_red_eye)
                          ) ,
                      focusedBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.red)),
                       enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                                ),
                                                 ),
                                             ) ,
                            SizedBox(height: 15,),
                              TextFormField(
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: _obscureText,
                        obscuringCharacter: '*',
                       decoration: InputDecoration(
                        
                        label: Text('Açar sözü tassyklaň'),
                        suffix:InkWell(
                          onTap: (){
                           debugPrint(_obscureText.toString());
                            setState(() {
                           _obscureText= !_obscureText;
                           });
                          },
                          child: Icon(Icons.remove_red_eye)
                          ) ,
                      focusedBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.red)),
                       enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                                ),
                                                 ),
                                             ) ,
                            SizedBox(height: 15,),
                      Container(
                             decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(color: Colors.black),
                              ),
                              child: MaterialButton(
                                color: Colors.green.shade500,
                                minWidth: double.infinity,
                                height:50,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                     Text("Agaza bol  ",style: TextStyle(
                                      color: Colors.white,
                                    fontSize: 14,
                                   ),),
                                  ],
                                ),
                              ),
                            ),
                   ],
                  ),
              ),
            ),
            ]
        );
  }

}


