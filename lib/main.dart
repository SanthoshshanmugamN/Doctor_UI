import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Doctor" ,
     home: HomeScreen(),
   );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
           Text("Hi Hosain",
           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Text("Find a doctor & specialist easily",
            style: TextStyle(fontSize: 9 ,color: Colors.grey),),

          ],
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right : 12),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/demo.png"),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 340,
            padding: EdgeInsets.only(
              top: 32,
              left: 70,
              bottom: 12,
              right: 22,
            ),
            margin: EdgeInsets.all(26),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(44),

            ),
           child: Column(
             children: const [
               Text("Check-up Covid-19",
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
               ),),
               Text("contains several list of questions "
                   "to check your physical condition")
             ],
           ),


          ),
          
        ],
      ),
    );
  }
  
}