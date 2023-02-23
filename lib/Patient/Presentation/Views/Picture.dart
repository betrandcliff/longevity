
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class Picture extends StatefulWidget {
  const Picture({super.key});

  @override
  State<Picture> createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  
    final TextEditingController _controller = TextEditingController();

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

            Align
            (
              alignment: Alignment.centerLeft,
              child: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_ios_outlined))),

           
          
             Row(
              children: [
                textWidget(text: "Let's take a"),
             textButton(text: "picture"),
              ],
             ),
             textWidget(text: "together?"),
            Row(
              children: [
                Row(
                  children: [
                  Image.asset("assets/images/input-icon.png"),
                  textButton(text: "Open Camera",fontSize: 16)
                  ],
                ),
                Row(
                  children: [
                  Icon(Icons.upload_outlined),
                  textButton(text: "Open gallery",fontSize: 16)
                  ],
                ),
              ],
            ),

                   Container(
                    padding: const EdgeInsets.only(left:18.0,right: 18.0),
                margin: EdgeInsets.only(top: Get.height/20),
                child: Expanded(child: TextField(
                  controller:_controller ,
                  decoration: InputDecoration(
                    hintText: "**************",
                    hintStyle: TextStyle(fontSize: 16),
                    suffixIcon: IconButton(icon: Icon(Icons.visibility_outlined),onPressed: (){},)
                  ),)),
              ),
          
            textButton(text: "Forget Password", alignment: Alignment.centerRight,fontSize: 14,paddingright: 13,paddingtop: 20),


             
              
              Container(
                width: double.infinity,
                margin:  EdgeInsets.only(left: 20,right: 20,top: Get.height/3.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorPalette.buttonColor,
                ),
                child: MaterialButton(
                  onPressed: (){
                 
                
                  
                  print("THE DONE BUTTON WAS TAPPED ");
                  print("THE DONE BUTTON WAS TAPPED ");
                  print("THE DONE BUTTON WAS TAPPED ");

                },child: const Text("Done",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              )
              
          ]),
        ),
      )),
    );
  }

Widget textButton({ required String text,Alignment alignment=Alignment.topLeft,double fontSize=36,TextDecoration decoration=TextDecoration.none,double paddingright=0,double paddingtop=0}){
   return  Align(
                alignment: alignment,
                child: Padding(
                  padding:  EdgeInsets.only(left:13.0,right: paddingright,top: paddingtop),
                  child: TextButton(onPressed: (){}, child:  Text(text,style:TextStyle(fontSize: fontSize,fontWeight: FontWeight.w400,decoration:decoration))),
                ),
              );
}
   

  Widget textWidget({required String text,  FontStyle fontStyle=FontStyle.normal, double fontSize=36}){
    return Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:const EdgeInsets.only(left:18.0,top: 10),
                child: Text(text,style:  TextStyle(color: ColorPalette.textBlackColor, fontSize: fontSize,fontStyle: fontStyle),),
              ));
  } 

  Widget bulletwidget({required String text}){
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorPalette.textBlackColor,),
         
        ),
       const SizedBox(width: 8,),
        Text(text,style:const TextStyle(color: ColorPalette.textBlackColor, fontSize: 16,fontWeight: FontWeight.w400),),
      ],
    );
  }

}