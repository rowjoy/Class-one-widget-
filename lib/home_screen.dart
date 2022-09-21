// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CLassTwo extends StatefulWidget {
  const CLassTwo({super.key});

  @override
  State<CLassTwo> createState() => _CLassTwoState();
}

class _CLassTwoState extends State<CLassTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell (
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios ,
            size: 20,
            color:  Colors.red,)
          ) ,
      ),
      body: SingleChildScrollView (
        child: SafeArea(
          child: Column(
            children: [
              Stack (
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                  ),
      
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
      
                  Positioned(
                    top: 200,
                     child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                               ),
                   ),
      
      
                ],
              ),
      
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title:  Text("Done") ,
                        actions: [
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            }, 
                            child: Text("Cancle")),
                        ],
                      );
                    }
                  );
                },
                 child: Text("Click now"),
              ),
            
             RichText(
                text: TextSpan(
                  text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextSpan(
                      text: 'Lorem Ipsum is simply',
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(text: '  dummy text of the'),
                  ],
                ),
              ),
      
      
             SizedBox(height: 40,),
      
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListView.builder(
                 itemCount: 10,
                 shrinkWrap: true,
                 itemBuilder: (context, index ){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                     title: Text("Jamirul islam"),
                     subtitle: Text("677677667767"),
                     tileColor: Colors.red,
                     leading: CircleAvatar(),
                     trailing: Icon(Icons.delete),
                    ),
                  );
                 }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}