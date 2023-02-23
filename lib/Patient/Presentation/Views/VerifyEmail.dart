
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/BloodBank.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final TextEditingController _Controller1 = TextEditingController();
  final TextEditingController _Controller2 = TextEditingController();
  final TextEditingController _Controller3 = TextEditingController();
  final TextEditingController _Controller4 = TextEditingController();
  final TextEditingController _Controller5 = TextEditingController();
  final TextEditingController _Controller6 = TextEditingController();


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

            
               Row(
                
                children: [
                  IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_ios_outlined)),
                 const Text("Change Email",style: TextStyle(color: ColorPalette.textBlackColor, fontSize: 18,fontWeight: FontWeight.w400),),
                ],
              ),
            

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
              padding: const EdgeInsets.only(left:18.0,bottom: 10,top: 10),
                child: Image.asset("assets/images/message.png", height: 38.28, width: 35.47,),
              )),

           const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,top: 10),
                child: Text("Hello there",style: TextStyle(color: ColorPalette.textColor, fontSize: 32),),
              )),


              Align(
               alignment: Alignment.topLeft, 
                child: Padding(
                padding: const EdgeInsets.only(left:18.0,top: 10),
                  child: Row(
                    children: [
                     const Text("Let me",style: TextStyle(fontSize: 32,color: ColorPalette.textBlackColor,fontWeight: FontWeight.w400)),
                      TextButton(onPressed: (){}, child: const Text("verify",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400))),
                     const Text("your",style: TextStyle(fontSize: 32,color: ColorPalette.textBlackColor,fontWeight: FontWeight.w400)),
                    ],
                  ),
                )),

             const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left:18.0),
                  child: Text("Identity...",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400)),
                ),
              ),

            const  Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 12),
                  child: Text("""we have sent you a message with 6-digit code,
or use the code from your Authenticator App.""",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                ),
              ),

              Container(
                margin:EdgeInsets.only(top: Get.height/25) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    horizontalLines(controller: _Controller1),
                    horizontalLines(controller: _Controller2),
                    horizontalLines(controller: _Controller3),
                    horizontalLines(controller: _Controller4),
                    horizontalLines(controller: _Controller5),
                    horizontalLines(controller: _Controller6),
                    
                  ],
                ),
              ),
             

              Padding(
                 padding: const EdgeInsets.only(left:18.0,top: 6,right: 18),
                child: Row(
                  children:[
                    IconButton(onPressed: (){}, icon:const Icon(Icons.call_outlined,color: ColorPalette.textColor,)),
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child:const Text("Call",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
                        const Text("Me",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                      ],
                    )
                  ],
                ),
              ),

              Container(
       
                margin: EdgeInsets.only(top: Get.height/17),
                padding: const EdgeInsets.only(left:18.0,right: 18),
                child: TextButton(onPressed: (){},child: const Text("Send it again",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500)),),
              ),

             const Text("Be quick, code expires in 6 hours!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
              Container(
                width: double.infinity,
                margin:  EdgeInsets.only(left: 20,right: 20,top: Get.height/12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorPalette.buttonColor,
                ),
                child: MaterialButton(onPressed: ()=>Get.to(()=>const BloodBank()),child: const Text("Continue",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              )
              
          ]),
        ),
      )),
    );
  }


Widget horizontalLines({required TextEditingController controller,  bool islineshowing=true}){
  return Column(
    children: [
      SizedBox(
         width: Get.width/8,
        child: Expanded(
          
          child: TextField(
            onTap: (){
              setState(() {
                islineshowing=!islineshowing;
              });
            },
            mouseCursor: null ,
            // maxLength: 1,
            // maxLengthEnforcement: 1,
            controller: controller,
          decoration:  InputDecoration(
            
            border:!islineshowing? OutlineInputBorder():InputBorder.none
          ),
        ))),
      Container( height: 2 , width: Get.width/8, color:ColorPalette.horizontalLineColor ,)
    ],
  );
}
   
}