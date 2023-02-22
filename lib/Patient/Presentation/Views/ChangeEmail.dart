
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class ChangeEmail extends StatefulWidget {
  const ChangeEmail({super.key});

  @override
  State<ChangeEmail> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  final TextEditingController _passwordController = TextEditingController();
  late String Security_Status;
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
                  child: Text("Now your password",style: TextStyle(fontSize: 32,color: ColorPalette.text_black_Color,fontWeight: FontWeight.w400)),
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
                    onChanged: (value) => setState(() {
                      
                    }),
                    
                    
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    horizontalLines(color: Security_Status=='Veryweak'? ColorPalette.StrongPasswordColor:ColorPalette.textColor),
                    horizontalLines(color:  Security_Status=='weak'? ColorPalette.StrongPasswordColor:ColorPalette.textColor),
                    horizontalLines(color: Security_Status=='Strong'? ColorPalette.StrongPasswordColor:ColorPalette.textColor),
                    horizontalLines(color: Security_Status=='VeryStrong'? ColorPalette.StrongPasswordColor:ColorPalette.textColor),
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
                        TextButton(onPressed: (){}, child: Text("Password Tips",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),))
                      ],
                    ),

                    Text(Security_Status,style: TextStyle(color: ColorPalette.StrongPasswordColor),)
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
                child: MaterialButton(onPressed: (){},child: const Text("Done",
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
  if(inputText.length<=6)
    changeSecurityStatus(Security.Weak as String);
  
  else if(inputText.length>8)
    changeSecurityStatus(Security.Strong as String);
  

  else if(inputText.contains("@,.'#"))
    changeSecurityStatus( Security.VeryStrong as String);
  
  else
    changeSecurityStatus(Security.VeryWeak as String);

  
  
  
}

changeSecurityStatus(String value){
     setState(() {
        Security_Status= value;
      });
}
}




enum  Security   {VeryStrong,Strong , Weak, VeryWeak}