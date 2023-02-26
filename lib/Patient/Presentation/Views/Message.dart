

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/Patient/Presentation/Views/Contact.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final TextEditingController _telephoneController = TextEditingController();
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
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_outlined)),
                dropdownFunction(_buildDropdownItem),
                ],
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
              padding: const EdgeInsets.only(left:18.0,bottom: 10,top: 10),
                child: Image.asset("assets/images/hand.png"),
              )),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,top: 10),
                child: Text("Hello here",style: TextStyle(color: ColorPalette.textColor, fontSize: 32),),
              )),


              Align(
               alignment: Alignment.topLeft, 
                child: Padding(
                padding: const EdgeInsets.only(left:18.0,top: 10),
                  child: Text("Can I message you?",style: TextStyle(fontSize: 32,color: ColorPalette.textBlackColor,fontWeight: FontWeight.w400)),
                )),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 10),
                  child: Text("""Login or create your account using your email
or phone number""",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                ),
              ),


              Padding(
                 padding: const EdgeInsets.only(left:18.0,top: 30,right: 18),
                child: Row(
                  children: [
                    dropdownFunction(_buildDropdownItemsFlags),
                    Container(
                      child: Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          controller: _telephoneController,
                          decoration: InputDecoration(
                            hintText: "+1123 456 789",
                            hintStyle: TextStyle(color: ColorPalette.inputHintColor,fontSize: 32),
                            border: InputBorder.none
                          ),
                          
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                 padding: const EdgeInsets.only(left:18.0,top: 20,right: 18),
                child: Row(
                  children:[
                     Text("Try",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                    TextButton(onPressed: (){}, child: Text("Demo Mode",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),))
                  ],
                ),
              ),

              Container(
                // height: 48,
                margin: EdgeInsets.only(top: Get.height/6),
                padding: const EdgeInsets.only(left:18.0,right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    socialMedia("facebook"),
                    socialMedia("google"),
                    socialMedia("mac"),
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
                child: MaterialButton(onPressed: (){
                  Get.to( Contact());
                },child:  Text("Continue",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),),

              )
              
          ]),
        ),
      )),
    );
  }


Widget socialMedia(String name){
  return InkWell(
    child:Image.asset("assets/images/${name}.png") ,
  );
}

  dropdownFunction(Widget build(Country country)){
    return Container(
        margin: EdgeInsets.only(right: 20),
      child: CountryPickerDropdown(
              initialValue: 'AR',
              itemBuilder: build,
              priorityList:[
                      CountryPickerUtils.getCountryByIsoCode('GB'),
                      CountryPickerUtils.getCountryByIsoCode('CN'),
                    ],
              onValuePicked: (Country country) {
                print("${country.name}");
              },
            ),
    );
  }


 Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            // CountryPickerUtils.getDefaultFlagImage(country),
           
            Text("${country.iso3Code}"), 
          ],
        ),
      );




 Widget _buildDropdownItemsFlags(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
           
            // Text("${country.iso3Code}"), 
          ],
        ),
      );

   
}