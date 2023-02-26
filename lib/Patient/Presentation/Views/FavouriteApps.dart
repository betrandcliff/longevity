
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
import 'package:longevity/Patient/Presentation/Views/Earning.dart';
import 'package:longevity/Patient/Presentation/Views/VerifyEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';

import 'Mode.dart';


class FavouriteApps extends StatefulWidget {
  const FavouriteApps({super.key});

  @override
  State<FavouriteApps> createState() => _FavouriteAppsState();
}

class _FavouriteAppsState extends State<FavouriteApps> {
  final TextEditingController _Controller = TextEditingController();
  int active =-1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        
        body: Center(
          
        child: Container(
          padding: EdgeInsets.all(20),
          
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                  
                    Get.bottomSheet(
                      
                       DraggableScrollableSheet(
                        expand: true,
                        initialChildSize: 0.9,
                        // minChildSize: 0.9,
                        builder: (context,ScrollController scrollcontroller){
                          return Earn();
                       }),
                       enableDrag: true,
                        isDismissible: true,
                       isScrollControlled: true,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(35)

                         ),
                    );
                  },
                  child: Row(children: [
                            Image.asset("assets/images/earn.png",width: 24,),
                            Image.asset("assets/images/000.png",width:24),
                            ],),
                ),
          
              Row(children: [
                    Text("Skip"),
                    Icon(Icons.arrow_forward_ios_outlined,size: 18,)
                    // IconButton(onPressed:(){}, ),
              ],),
              ],
             ),
          
             Padding(
               padding: const EdgeInsets.only(top:18.0),
               child: Text("Do you use one of",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w400),),
             ),
             Row(
              children: [
                Text("these ",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w400),),
                Text("Apps?",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w400,color: ColorPalette.buttonColor),)
              ],
             ),
          
          
             Padding(
               padding: const EdgeInsets.only(top:8.0),
               child: Text("Connect to your health app import parameters and earn 5 \$LONG for each app",
               style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
             ),
          
            cardItems(img: "google-fit",     index: 0, text: "Google fit"),
            cardItems(img: "samsung-health", index: 1, text: "Samsung Health"),
            cardItems(img: "Apple-Health",   index: 2, text: "Apple Health",icon: Icons.arrow_forward_ios_outlined),
            cardItems(img: "mi-fit",         index: 3, text: "Xiaomi mi fit"),
            cardItems(img: "garmin-connect", index: 4, text: "Germin connect"),
            cardItems(img: "huawei",         index: 5, text: "Huawei Health"),
            cardItems(img: "pedometer",      index: 6, text: "lt Pedometer"),
            cardItems(img: "mi-home",        index: 7, text: "Xiaomi mi home"),
            cardItems(img: "",               index: 8, text: "Pull down to refresh"),
          
               
                
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
       
        child:   Container(
              
                margin: const EdgeInsets.only(left: 90,right: 90,bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorPalette.buttonColor,
                ),
                child: MaterialButton(onPressed: ()=>Get.to(()=>DemoMode()),child: const Text("Continue",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              ),
      )
      ),
      
    );
  }

cardItems({ String img="" , required String text,IconData? icon, required  int index }){

   return InkWell(
    onTap: (){
        setState(() {
          active=index;
        });
    },
     child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      
       child: Card(
        color:active==index?ColorPalette.greyButtonColor:null ,
        elevation: 4,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            
             children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                height: 40,
                width: 5,
                color:active==index? Colors.blue[200]:null,
              ),
              Expanded(
                child: Column(
                  children: [
                    ListTile(
                     leading:img.isNotEmpty? Image.asset("assets/images/$img.png"):null,
                     title: Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
                     trailing: Icon(icon),
                    ),
                      if(img=="Apple-Health")
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: Icon(Icons.check_circle_outline,color: Colors.green,size: 12,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,bottom: 8),
                            child: Text("Connected", style: TextStyle(color: Colors.green),),
                          ),
                        ],
                      ),


                       if(img=="")
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,bottom: 8),
                            child: Text("Your app is missing?", style: TextStyle(),),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,bottom: 8),
                                child: Text("Check support app", style: TextStyle(color: ColorPalette.buttonColor),),
                              ),
                              Icon(Icons.call_made,color: ColorPalette.buttonColor,size: 10,)
                            ],
                          ),
                        ],
                      )
                  
                  ],
                ),
              ),
               
             ],
           ),
         ),
       ),
     ),
   );
}
   
}