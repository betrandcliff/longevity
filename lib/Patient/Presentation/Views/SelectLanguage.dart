
import 'dart:convert';
import 'dart:io';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/Earning.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
import 'package:dashed_circle/dashed_circle.dart';

// import 'package:file_picker_example/src/file_picker_demo.dart';

// import 'package:image_picker/image_picker.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  
    final TextEditingController _controller = TextEditingController();
  bool ispicked= false;
   late File _image;

int _groupvalue= 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

           
              Padding(
                padding: const EdgeInsets.only(top:18.0),
                child: Text("Select Language",style: TextStyle(fontSize: 26,),),
              ),

              Container(
                padding: EdgeInsets.only(left: 20),
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorPalette.greyButtonColor,
                ),
                child: TextField(
                  
                  decoration: InputDecoration(
                    // fillColor: ColorPalette.greyButtonColor,
                    // filled: true,
                    hintText: "Search Language",
                    // contentPadding: EdgeInsets.only(left: 10),
                   suffixIcon: Icon(Icons.search) ,
                   border: InputBorder.none
                  
                ),
                ),
              ),
           
                radioSelector(text: "English(USa)",img: "us",value: 1),
                radioSelector(text: "Russia",img: "RU",value: 2),
          
              Container(
                width: Get.width/2,
                margin:  EdgeInsets.only(left: 20,right: 20,top: Get.height-350),
                decoration: BoxDecoration(
                  color:ColorPalette.buttonColor ,
                  borderRadius: BorderRadius.circular(25),
                  
                 
                ),
                child: MaterialButton(
                  onPressed: (){
                    // Get.to(()=>Earn());
                },child: const Text("Done",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              )
              
          ]),
        ),
      )),
    );
  }

Widget radioSelector({required String text,required String img,required int value}){
  return Container(
    margin: EdgeInsets.only(left: 10),
    child: ListTile(
      leading: Image.asset("assets/images/$img.png"),
      title: Text(text),
      trailing: Radio(value:value ,onChanged: (v){
        setState(() {
          _groupvalue=value;
        });
      }, groupValue: _groupvalue,),
    ),
  );
}



}