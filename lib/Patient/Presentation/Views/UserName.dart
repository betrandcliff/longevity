
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class ChangeUserName extends StatefulWidget {
  const ChangeUserName({super.key});

  @override
  State<ChangeUserName> createState() => _ChangerUserNameState();
}

class _ChangerUserNameState extends State<ChangeUserName> {
  final TextEditingController _Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          
              Container(
                width: double.infinity,
                // margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios_outlined)),
                  
                  ],
                ),
              ),
          
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                padding: const EdgeInsets.only(left:18.0,bottom: 10,top: 10),
                  child: Image.asset("assets/images/person.png", height: 38.28, width: 35.47,),
                )),
          
             const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 10),
                  child: Text("Hello there",style: TextStyle(color: ColorPalette.textColor, fontSize: 32),),
                )),
          
          
               const Align(
                 alignment: Alignment.topLeft, 
                  child: Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 10),
                    child: Text("What name do you",style: TextStyle(fontSize: 32,color: ColorPalette.textBlackColor,fontWeight: FontWeight.w400)),
                  )),
          
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:18.0),
                    child: Row(
                      children: [
                       const Text("prefer to be",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400)),
                      TextButton(onPressed: (){}, child: const Text("called?",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400)))
                      ],
                    ),
                  ),
                ),
          
          
                Padding(
                   padding: const EdgeInsets.only(left:18.0,top: 30,right: 18),
                  child: TextField(
                    
                    controller: _Controller,
                    decoration:const InputDecoration(
                      hintText: "Jane Cooper",
                      hintStyle: TextStyle(color: ColorPalette.inputHintColor,fontSize: 32),
                      border: InputBorder.none
                    ),
                    
                  ),
                ),  
                
                Container(
                  margin: EdgeInsets.only(left: 15,right: 15),
                  width: double.infinity,
                  height: 5,
                  color: ColorPalette.greyButtonColor,
                ),
          
                Padding(
                   padding:  EdgeInsets.only(left:18.0,top:Get.height/45,right: 18),
                  child: Row(
                    children:[
                      const Text("Add",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                      TextButton(onPressed: (){}, child: Text("Profile Picture",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),))
                    ],
                  ),
                ),
          
                Container(
                  // height: 48,
                  margin: EdgeInsets.only(top: Get.height/7),
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: TextButton(onPressed: (){},child: Text("Ask me later"),),
                ),
          
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20,right: 20,top: 37),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorPalette.buttonColor,
                  ),
                  child: MaterialButton(onPressed: ()=>Get.to(()=>const VerifyEmail()),child: const Text("Continue",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),
          
                )
                
            ]),
          ),
        )),
    );
  }


   
}