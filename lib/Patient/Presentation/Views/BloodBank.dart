
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/Password.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class BloodBank extends StatefulWidget {
  const BloodBank({super.key});

  @override
  State<BloodBank> createState() => _BloodBankState();
}

class _BloodBankState extends State<BloodBank> {

  
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
                child: Image.asset("assets/images/logo.png",height: 47.06, width: 96,),
              )),

           const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,top: 10),
                child: Text("Let's get started",style: TextStyle(color: ColorPalette.textBlackColor, fontSize: 36),),
              )),


             const Align(
               alignment: Alignment.topLeft, 
                child: Padding(
                padding: const EdgeInsets.only(left:18.0),
                  child: Text("With your",style: TextStyle(fontSize: 36,color: ColorPalette.textBlackColor,fontWeight: FontWeight.w400)),
                )),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:13.0),
                  child: TextButton(onPressed: (){}, child: const Text("Digital  BioBank",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w400))),
                ),
              ),


              
          
                  
          // const Padding(
          //        padding: const EdgeInsets.only(left:10.0,top: 20,right: 18),
          //       child: const Text("By using our app and creating an account you",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400)),
          //     ),

            

           const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 20),
                  child: Text("By using our app and creating an account you",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(left:18.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("agree with our ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                    TextButton(onPressed: (){},child:const Text("Terms of Service",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400))),
                      const Text("and",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                    TextButton(onPressed: (){},child:const Text("Private Policy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400))),

                  ],
                ),
              ),
            

              Container(
                margin: EdgeInsets.only(top: Get.height/4),
                padding: const EdgeInsets.only(left:18.0,right: 18),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/earn.png"),
                      const  Text("50",style: TextStyle(fontSize: 24,color: ColorPalette.textColor),),
                     const SizedBox(width: 15,),
                       const Text("Ask me later",style: TextStyle(fontSize: 24,color: ColorPalette.textColor),),
                      ],
                    ),

                  const  RotatedBox(
                      quarterTurns: -2,
                      child: Icon(Icons.error_outline))
                  ],
                ),
              ),

    
       
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorPalette.buttonColor,
                ),
                child: MaterialButton(onPressed: (){Get.to(()=>const Password());},child: const Text("Here We Go",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              )
              
          ]),
        ),
      )),
    );
  }


   
}