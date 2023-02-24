
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/Mode.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class Earn extends StatefulWidget {
  const Earn({super.key});

  @override
  State<Earn> createState() => _EarnState();
}

class _EarnState extends State<Earn> {

  bool ishovered = false;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    // final hoveredTransform = Matrix4.identity()..translate(-20,0,0);
    // final transform = ishovered? hoveredTransform:Matrix4.identity();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          
        child: Container(
          margin: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

            
            Padding(
              padding: const EdgeInsets.only(top:18.0,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: [
                  textWidget(text: "Earning"),
                  textWidget(text: "\$LONG",color: ColorPalette.textColor),
                ],
               ),
            ),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset("assets/images/earn.png"),
               Text("10", style: TextStyle(fontSize: 36,color: ColorPalette.textColor,fontWeight: FontWeight.w500),)
             ],
           ),
          
             
          const Padding(
             padding: const EdgeInsets.only(top:28.0),
             child: Text("Play our game and parameters and devices, invite friends and get achievements to get rewarded in LongevityCoin(\$LONG token)",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
           ),

         const  Padding(
             padding: const EdgeInsets.only(top:28.0),
             child: Text("You can use the token to get products and services in Longevity EcoSystem",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
           ),

           Padding(
            padding: const EdgeInsets.only(top:28.0),
             child: RichText(text: TextSpan(
                  children: [
                  const TextSpan(
                    text: "Every time you see an ",
                    style: TextStyle(color: ColorPalette.textBlackColor,fontSize: 18,fontWeight: FontWeight.w400)
                   ),
                   WidgetSpan(child: Image.asset("assets/images/earn.png",width: 18,)),
                 const  TextSpan(
                    text: " icon followed by a number, it means the amount coins will be added to your account",
                    style: TextStyle(color: ColorPalette.textBlackColor,fontSize: 18,fontWeight: FontWeight.w400)
                   ),
                  ]
             )),
           ),
             
              
              Padding(
                 padding: const EdgeInsets.only(top:28.0),
                child: Row(
                  children: [
                    textButton(text: "Learn more about \$LONG",fontSize: 18),
                    const Icon(Icons.call_made,color: ColorPalette.buttonColor)

                  ],
                ),
              ),
              
              Container(
                width: double.infinity,
                margin:  EdgeInsets.only(top: Get.height/6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorPalette.buttonColor,
                ),
                child: MouseRegion(
                 onEnter: (event) => onEnter(true),
                 onExit: (event) => onEnter(false),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds:200),
                    
                    child: MaterialButton(
                      
                     
                      onPressed: (){
                          Get.to(()=>DemoMode());
                    },child: const Text("Close",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),
                  ),
                ),

              ),

             
              
          ]),
        ),
      )),
    );
  }

Widget textButton({ required String text,Alignment alignment=Alignment.topLeft,double fontSize=36,TextDecoration decoration=TextDecoration.none,double paddingright=0,double paddingtop=0}){
   return  Align(
                alignment: alignment,
                child: Padding(
                  padding:  EdgeInsets.only(right: paddingright,top: paddingtop),
                  child: TextButton(onPressed: (){}, child:  Text(text,style:TextStyle(fontSize: fontSize,fontWeight: FontWeight.w500,decoration:decoration))),
                ),
              );
}
   

  Widget textWidget({required String text, Color color=ColorPalette.textBlackColor, FontStyle fontStyle=FontStyle.normal, double fontSize=36}){
    return Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:const EdgeInsets.only(left:5.0,top: 10),
                child: Text(text,style:  TextStyle(color: color, fontSize: fontSize,fontStyle: fontStyle),),
              ));
  } 

  
  
  onEnter(bool bool)=>setState(() {
                          ishovered=bool;
                        });

}