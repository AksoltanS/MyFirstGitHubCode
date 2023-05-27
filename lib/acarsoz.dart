import 'package:flutter/material.dart';
class AcarSoz extends StatefulWidget {
  const AcarSoz({super.key});
  @override
  State<AcarSoz> createState() => _AcarSozState();
}
class _AcarSozState extends State<AcarSoz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          elevation: 0,
         backgroundColor: Colors.white,
          toolbarHeight: 60,
          leading:IconButton( onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black54,)),
          title: const Text("Yza dolanmak",style:TextStyle(color: Color.fromARGB(255, 29, 25, 25)) )),
      body:    Column(
                children: [
                  Text('Telefon belginiz:'),
                     TextField(
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.sentences,
                       decoration: InputDecoration(
                        prefixText:"+993",
                        helperText: "Dolu belginizii girizin", 
                        suffix:Icon(Icons.remove_red_eye) ,
                      focusedBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.red)),
                       enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                                     ),
                                                 ),
                                 ],
                               ) ,
    );
  }
}