
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/Picture.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  
    final TextEditingController _controller = TextEditingController();
     bool _ishash=true;
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

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
              padding:  EdgeInsets.only(left:18.0,bottom: 40,top: Get.height/20),
                child: Image.asset("assets/images/Vector_.png"),
              )),

          
             Row(
               children: [
                 textWidget(text: "Now your"),
                 textButton(text: "password"),
               ],
             ),
             
             textWidget(text: "Avoid sharing it with others",fontStyle: FontStyle.italic,fontSize: 16),
          

                   Container(
                    padding: const EdgeInsets.only(left:18.0,right: 18.0),
                margin: EdgeInsets.only(top: Get.height/20),
                child: TextField(
                  obscureText: _ishash,
                  controller:_controller ,
                  // keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "**************",
                    hintStyle: TextStyle(fontSize: 16),
                    suffixIcon: IconButton(icon: Icon(Icons.visibility_outlined),onPressed: (){setState(() {
                      _ishash=!_ishash;
                    });},)
                  ),),
              ),
          
            textButton(text: "Forget Password", alignment: Alignment.centerRight,fontSize: 14,paddingright: 13,paddingtop: Get.height/40),


             
              
              Container(
                width: double.infinity,
                margin:  EdgeInsets.only(left: 20,right: 20,top: Get.height/3.1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorPalette.buttonColor,
                ),
                child: MaterialButton(
                  onPressed: (){
                   alertDialog();
                  Get.to(()=>Picture());
                  
                  

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
                  padding:  EdgeInsets.only(left:0.0,right: paddingright,top: paddingtop),
                  child: TextButton(onPressed: (){}, child:  Text(text,style:TextStyle(fontSize: fontSize,fontWeight: FontWeight.w400,decoration:decoration))),
                ),
              );
}
   

  Widget textWidget({required String text,  FontStyle fontStyle=FontStyle.normal, double fontSize=36, double paddingtop=0}){
    return Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left:14.0,top: paddingtop),
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

   alertDialog() async{
    return  await Get.defaultDialog(
      title: "Creating a Password",
                 
      content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const Padding(
                     padding:  EdgeInsets.only(top:10.0,bottom: 10),
                     child:  Text("Create a very strong password to protect your data",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                   ),
                
                   const Padding(
                      padding:  EdgeInsets.only(top:10.0,bottom: 10),
                      child:Text("Requirements",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    ),
                    bulletwidget(text: "8 or more characters and numbers"),           
                    bulletwidget(text: "At least 1 special character "), 
                    const Padding(
                      padding:  EdgeInsets.only(left:17.0),
                      child: Text("[{(!@#%-=+*&)}]"),
                    ),          
                    bulletwidget(text: "Avoid date and sequences"),   

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: Get.height/80,bottom: 5),
                      decoration:const BoxDecoration(
                        // borderRadius: BorderRadius.circular(15),
                        color:ColorPalette.greyButtonColor ,
                      ),
                      child: MaterialButton(onPressed: ()=>Get.back(),child: const Text("Got it!"),),
                    )        
                  ],
                )
    );
  }
}