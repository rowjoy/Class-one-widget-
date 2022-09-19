// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        automaticallyImplyLeading: false,
        title: const Text("Demo"),
        actions: [
          const Icon(Icons.delete)
        ],
      ),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Hello !",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ) ,),
                        const Text("My Name is Joy",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ) ,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            elevation: 10,
                          ),
                          onPressed: (){
      
                          },
                          child:  const Text("Save",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (){
                        print("Hello");
                      },
                      child: const Text("Cleck Now",
                        style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        
                      ),
                      onPressed: (){},
                      onLongPress: (){
                        
                      },
                      child: Text("Update",
                        style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                        ),
                      )
                    ),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextField(
                        controller:_controller,
                        decoration: InputDecoration(
                          hintText: "Name",
                          label: Text("Name"),
                          border: OutlineInputBorder(),
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ) ,
                      ),
                    ],
                  ),
                )
              ),
            
            ],
          ),
        ),
      )
    );
  }
}