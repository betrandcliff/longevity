
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/SelectLanguage.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class TermsAndPrivacy extends StatefulWidget {
  const TermsAndPrivacy({super.key});

  @override
  State<TermsAndPrivacy> createState() => _TermsAndPrivacyState();
}

class _TermsAndPrivacyState extends State<TermsAndPrivacy> {
  
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
          // margin: EdgeInsets.all(14),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          
              // Align
              // (
              //   alignment: Alignment.centerLeft,
              //   child: IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_ios_outlined))),
              const Align(
              alignment: Alignment.center,
              child: Padding(
              padding:  EdgeInsets.only(top:18.0,),
                child: Text("Terms & Privacy",style:  TextStyle(color: ColorPalette.textBlackColor, fontSize: 23.96,),),
              )),
            
              termsPrivacy(text: "Terms of Service"),
              termsPrivacy(text: "Privacy Policy"),
              termsPrivacy(text: "Demo  mode Terms"),
               
            const Padding(
               padding:EdgeInsets.only(top:19.0,left: 20,right: 22),
               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),
            const Padding(
               padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),
            const Padding(
                padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),
            const Padding(
             padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),
            const Padding(
              padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),

                  
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
              padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

                child: Text("Terms & Privacy",style:  TextStyle(color: ColorPalette.textBlackColor, fontSize: 23.96,),),
              )),


          const Padding(
              padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),

         const Padding(
             padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),


                
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
              padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

                child: Text("Demo mode additional terms",style:  TextStyle(color: ColorPalette.textBlackColor, fontSize: 23.96,),),
              )),

            const Padding(
            padding:EdgeInsets.only(top:19.0,left: 20,right: 22),

               child: Text("Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et."  
                           "Sunt qui esse pariatur duisid quis deserunt mollit dolore cillum minim tempor"
                           " enim. Elit aute irure tempor cupidatat incididuntsint deserunt ut voluptate aute id desurunt nisi."
          
          ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.justify,),
             ),

               
                      Container(
                        width: Get.width/3,
                        margin:  EdgeInsets.only(top: 30,bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorPalette.buttonColor,
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            Get.to(()=>SelectLanguage());
                          },child: const Text("Close",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),
          
                      ),
                    ],
                  ),
          ),
              ),

             
              
        
        
      )),
    );
  }


Widget termsPrivacy({required String text}){
    return ListTile(
      
      title: Text(text,style:const TextStyle(fontSize: 23.96,fontWeight: FontWeight.w500,color: ColorPalette.buttonColor),),
      trailing:const Icon(Icons.arrow_forward_ios_outlined)
      
    );
}


}