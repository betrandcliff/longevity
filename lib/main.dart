import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/Patient/Presentation/Views/Message.dart';
import 'common/Colors.dart';
// import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Longevity InTime',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

 

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),()=>Get.to(()=>Message()));
  }

  @override
  Widget build(BuildContext context) {
    
   
    return Scaffold(
     
      body: Center(
       
        child: Stack(
        // alignment: Alignment.center,
          children: [
            Positioned(

              top: Get.height/2,
              left: Get.width/4,
              right: Get.width/4,
              child: Image.asset("assets/images/logo.png"),),

            Positioned(
            bottom:  40,
            left: Get.width/4,
            right: Get.width/4,
       
              child: Center(child: Text("Disease Tracker",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,color: ColorPalette.textColor))),
            )
          ],
        ))
          
    );
  }
}
