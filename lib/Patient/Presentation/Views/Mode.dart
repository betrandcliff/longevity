
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/Terms_Privacy.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class DemoMode extends StatefulWidget {
  const DemoMode({super.key});

  @override
  State<DemoMode> createState() => _DemoModeState();
}

class _DemoModeState extends State<DemoMode> {
  
    final TextEditingController _controller = TextEditingController();
    // LongPressGestureRecognizer
   late TapGestureRecognizer tapGestureRecognizer;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tapGestureRecognizer = TapGestureRecognizer()
    ..onTap=_handletextTap;
  }

_handletextTap(){
  print(" THE TEST WAS TAPPED");
  print(" THE TEST WAS TAPPED");
  print(" THE TEST WAS TAPPED");
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          
        child: Container(
          margin: EdgeInsets.all(Get.height/50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

            // Align
            // (
            //   alignment: Alignment.centerLeft,
            //   child: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_ios_outlined))),
            Padding(
              padding:  EdgeInsets.only(top:Get.height/50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
               
              children: [
                  Padding(
                    padding:  EdgeInsets.only(right:0,),
                    child: TextButton(onPressed: (){}, child:  Text("Demo",style:TextStyle(fontSize: 23.96,))),
                  ),

              Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:const EdgeInsets.only(top: 0),
                child: Text("Mode",style:  TextStyle(color: ColorPalette.textBlackColor, fontSize: 23.96,),),
              ))
                  
                 
                ],
               ),
            ),
          
          
             
           Padding(
             padding:  EdgeInsets.only(top:Get.height/50),
             child: Text("""In demo mode you can try prediction features without createing and account 
or inputing data""",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
           ),
          Padding(
             padding: EdgeInsets.only(top:Get.height/50),
             child: Text("""Using a random preset of full parameters, we will make real timeand give recommendations
""",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
           ),
           Padding(
             padding: EdgeInsets.only(top:Get.height/50),
             child: Text("""Demo mode is not intended for personal use or give recommedation for your parameters. All data
provided here has not relation with users, any similarity with personal information is mere coincidence.
""",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic,color: ColorPalette.textgreyColor),),
           ),

         
           RichText(text: TextSpan(
                  children:  [
                 const  TextSpan(
                    text: "By proceding you agree to our",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic,color: ColorPalette.textgreyColor)
                   ),
                  
                   TextSpan(
                    
                    text: " addintional terms of service for demo mode",
                    style:const TextStyle(color: ColorPalette.textColor,fontSize: 20,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),
                    recognizer:tapGestureRecognizer,
                   ),
                  ]
             )),
              Container(
                margin:  EdgeInsets.only(top: Get.height/11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width/3,
                      // 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: ColorPalette.buttonColor,
                        )
                      ),
                      child: MaterialButton(
                        onPressed: (){
                       
                          Get.back();
                        

                      },child: const Text("Go Back",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: ColorPalette.buttonColor),),),

                    ),


                    Container(
                      width: Get.width/2,
                      // margin:  EdgeInsets.only(top: Get.height/7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorPalette.buttonColor,
                      ),
                      child: MaterialButton(
                        onPressed: (){
                       
                      
                          Get.to(()=>TermsAndPrivacy());

                      },child: const Text("Try it Now!",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

                    ),
                  ],
                ),
              ),

             
              
          ]),
        ),
      )),
    );
  }


   


}