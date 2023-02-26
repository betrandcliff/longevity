
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
bool _ishash= true;
RegExp numReg = RegExp(r".*[0-9].*");
// RegExp letterReg = RegExp(r"?=.*[*".!@#\$%^&(){}:;<>,.\' + r"'?/~_+-=])");
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
                child: TextField(
                           controller: _passwordController,
                           obscureText: _ishash,
                           keyboardType: TextInputType.text,
                          
                          decoration: InputDecoration(
                            hintText: "**************",
                            hintStyle: TextStyle(color: ColorPalette.inputHintColor,fontSize: 32),
                            border: InputBorder.none,
                             suffixIcon: IconButton(onPressed: (){setState(() {
                             _ishash=!_ishash;
                           });}, icon: Icon(Icons.remove_red_eye_outlined)),
                   
                          ),
                          onChanged: security
                          
                        ),
               
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    horizontalLines(color: (linecolor==0||linecolor>0)? ColorPalette.strongPasswordColor:ColorPalette.horizontalLineColor),
                    horizontalLines(color: (linecolor==1||linecolor>1)? ColorPalette.strongPasswordColor:ColorPalette.horizontalLineColor),
                    horizontalLines(color: (linecolor==2||linecolor>2)? ColorPalette.strongPasswordColor:ColorPalette.horizontalLineColor),
                    horizontalLines(color: linecolor==3? ColorPalette.strongPasswordColor:ColorPalette.horizontalLineColor),
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
                margin:  EdgeInsets.only(left: 20,right: 20,top:Get.height/4.3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
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
  String password = inputText.trim();
  print(password);
  print(!numReg.hasMatch(password));
  if(password.length<6)
    changeSecurityStatus("very Weak",0);
  
  else if(password.length<9)
    changeSecurityStatus("Weak",1);
  

  else if(!numReg.hasMatch(password)  || !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')))
    changeSecurityStatus("Strong",2);
  
  else
     changeSecurityStatus("Very Strong",3);

  
  
  
}

changeSecurityStatus(String value,  int line){
     setState(() {
        Security_Status= value;
        linecolor=line;
        print(value);
       
      });
}
}




