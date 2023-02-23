
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';

import 'UserName.dart';


class ChangeEmail extends StatefulWidget {
  const ChangeEmail({super.key});

  @override
  State<ChangeEmail> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  final TextEditingController _passwordController = TextEditingController();
String Security_Status ="";
int linecolor=-1;
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
              margin: EdgeInsets.only(top: 10),
              child: Row(
                
                children: [
                  IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back_ios_outlined)),
                const  Text("Change email",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),)
                ],
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
              padding: const EdgeInsets.only(left:18.0,bottom: 10,top: 10),
                child: Image.asset("assets/images/key.png"),
              )),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,top: 10),
                child: Text("Hello there",style: TextStyle(color: ColorPalette.textColor, fontSize: 32),),
              )),


              Align(
               alignment: Alignment.topLeft, 
                child: Padding(
                padding: const EdgeInsets.only(left:18.0,top: 10),
                  child: Text("Now your password",style: TextStyle(fontSize: 32,color: ColorPalette.textBlackColor,fontWeight: FontWeight.w400)),
                )),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 10),
                  child: Text("Avoid sharing it with anyone!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic)),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: Get.height/14),
                padding: const EdgeInsets.only(left:18.0,top: 30,right: 18),
                child: Expanded(
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "**************",
                      hintStyle:const TextStyle(color: ColorPalette.inputHintColor,fontSize: 32),
                      border: InputBorder.none,
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
                      suffixIconColor: ColorPalette.textColor,
                      suffixIconConstraints:BoxConstraints(maxWidth: 53),

                      // isDense: true
                    ),
                    onChanged: security
                    
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    horizontalLines(color: (linecolor==0||linecolor>0)? ColorPalette.strongPasswordColor:ColorPalette.textColor),
                    horizontalLines(color: (linecolor==1||linecolor>1)? ColorPalette.strongPasswordColor:ColorPalette.textColor),
                    horizontalLines(color: (linecolor==2||linecolor>2)? ColorPalette.strongPasswordColor:ColorPalette.textColor),
                    horizontalLines(color: linecolor==3? ColorPalette.strongPasswordColor:ColorPalette.textColor),
                ],
              ),

              Padding(
                 padding: const EdgeInsets.only(left:18.0,top: 2,right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children:[
                        const Text("Check",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                        TextButton(onPressed: (){}, child:const Text("Password Tips",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),))
                      ]),

                    Text(Security_Status,style:const TextStyle(color: ColorPalette.strongPasswordColor),)
                  ],
                ),
              ),

             

              Container(
                width: double.infinity,
                margin:  EdgeInsets.only(left: 20,right: 20,top:Get.height/4.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorPalette.buttonColor,
                ),
                child: MaterialButton(onPressed: (){Get.to(()=>ChangeUserName());},child: const Text("Done",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              )
              
          ]),
        ),
      )),
    );
  }


Widget horizontalLines({ required Color color}){
  return Container( height: 2 , width: Get.width/5, color:color ,);
}
 
 security( String inputText){
  if(inputText.length>=5 && inputText.length<=8)
    changeSecurityStatus("Weak",1);
  
  else if(inputText.length>9)
    changeSecurityStatus("Strong",2);
  

  else if(RegExp(r'^[0-9_\-=@,\.;]+$').hasMatch(inputText))
    changeSecurityStatus("VeryStrong",3);
  
  else
     changeSecurityStatus("VeryWeak",0);

  
  
  
}

changeSecurityStatus(String value,  int line){
     setState(() {
        Security_Status= value;
        linecolor=line;
        print(value);
      });
}
}




