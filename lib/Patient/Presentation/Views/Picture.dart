
import 'dart:convert';
import 'dart:io';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/Earning.dart';
import 'package:longevity/Patient/Presentation/Views/FavouriteApps.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
import 'package:dashed_circle/dashed_circle.dart';

// import 'package:file_picker_example/src/file_picker_demo.dart';

// import 'package:image_picker/image_picker.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';

import 'Mode.dart';


class Picture extends StatefulWidget {
  const Picture({super.key});

  @override
  State<Picture> createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  
    final TextEditingController _controller = TextEditingController();
  bool ispicked= false;
   late File _image;

double _value= 50;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          
              Align
              (
                alignment: Alignment.centerLeft,
                child: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_ios_outlined))),
          
             
            
               Row(
                children: [
                  textWidget(text: "Let's take a"),
                  textWidget(text: "picture",color: ColorPalette.buttonColor,leftpadding: 9),
                ],
               ),
               textWidget(text: "together?"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                      Image.asset("assets/images/input-icon.png"),
                      textButton(text: "camera",fontSize: 16)
                      ],
                    ),
                    Row(
                      children: [
                      Image.asset("assets/images/upload_.png"),
                      textButton(text: "gallery",fontSize: 16)
                      ],
                    ),
                  ],
                ),
              ),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textButton(text: "Link to my avatar",color: ColorPalette.horizontalLineColor,fontSize: 16),
                     const Icon(Icons.call_made,color: ColorPalette.horizontalLineColor,)
                    ],
                  ),
                     Container(
                      // height: Get.height/5,
                      // width: Get.width/3,
                      color: ColorPalette.greyButtonColor,
                      
                       child: DashedCircle(
                         child: Padding(
                           padding: EdgeInsets.all(8.0),
                           child: ispicked? CircleAvatar( radius: _value,backgroundImage: FileImage(_image),):CircleAvatar(radius: _value,backgroundColor: Colors.transparent,)
          
                         ),
                         color: ColorPalette.horizontalLineColor,
                       ),
                     ),
                
          
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding:  EdgeInsets.only(top:Get.height/90),
                    child: SizedBox(
                      width: Get.width-(Get.width/4),
                      child: Slider(
                        max: 90,
                        min:40,
                        value: _value,
                        onChanged: (value){
                            setState(() {
                              _value= value;
                            });
                        },
                      ),
                    ),
                  ),
                ),
          
          
               
                
                Container(
                  width: double.infinity,
                  margin:  EdgeInsets.only(left: 20,right: 20,top: Get.height/4.4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    border:Border.all(
                      color:ColorPalette.buttonColor 
                    )
                  ),
                  child: MaterialButton(
                    onPressed: (){

                      Get.to(()=>FavouriteApps());

                  },child: const Text("Done",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: ColorPalette.buttonColor),),),
          
                )
                
            ]),
          ),
        ),
      )),
    );
  }

Widget textButton({ 
    required String text,
     Alignment alignment=Alignment.topLeft,
     double fontSize=36,
     TextDecoration decoration=TextDecoration.none,
     double paddingright=0
     ,double paddingtop=0,
     Color color=ColorPalette.textColor
     }){
   return  Align(
                alignment: alignment,
                child: Padding(
                  padding:  EdgeInsets.only(left:13.0,right: paddingright,top: paddingtop),
                  child: TextButton(onPressed: ()=>pickImage(text: text), child:  Text("Open $text",style:TextStyle(fontSize: fontSize,fontWeight: FontWeight.w400,decoration:decoration,color: color))),
                ),
              );
}
   

  Widget textWidget({required String text, double leftpadding=18, FontStyle fontStyle=FontStyle.normal, double fontSize=36, Color color=ColorPalette.textBlackColor}){
    return Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left:leftpadding,top: 10),
                child: Text(text,style:  TextStyle(color:color , fontSize: fontSize,fontStyle: fontStyle),),
              ));
  } 


pickImage({required String text}) async{
  // final ImagePicker imagepicker = ImagePicker();

  // final file =await imagepicker.pickImage(source:text=="camera"?ImageSource.camera: ImageSource.gallery);

  // if(file==null)return;

  // final imagetmp = File(file.path);

  // setState(() {
  //   this._image= imagetmp;
  // });


  FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {

      setState(() {
         _image = File(result.files.single.path!);
         ispicked= true;
      });
    } else {
      // User canceled the picker
    }
}

}