
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/Patient/Presentation/Views/ChangeEmail.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:longevity/common/Colors.dart';


class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController _telephoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(

          child: SingleChildScrollView(
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
                  countrydropdown(),
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
                  child: Text("Hello there",style: TextStyle(color: ColorPalette.textColor, fontSize: 32),),
                )),
          
          
                Align(
                 alignment: Alignment.topLeft, 
                  child: Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 10),
                    child: Text("Lets get in contact",style: TextStyle(fontSize: 32,color: ColorPalette.textBlackColor,fontWeight: FontWeight.w400)),
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
                   
                      Container(
                        child: Expanded(
                          child: TextField(
                            // controller: _telephoneController,
                            decoration: InputDecoration(
                              hintText: "Email or phone",
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
                   padding: const EdgeInsets.only(left:18.0,top:20,right: 18),
                  child: Row(
                    children:[
                      const Text("Try",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                      TextButton(onPressed: (){}, child: Text("Demo Mode",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500),))
                    ],
                  ),
                ),
          
                Container(
                  // height: 48,
                  margin: EdgeInsets.only(top: Get.height/5),
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
                  margin:  EdgeInsets.only(left: 20,right: 20,top: Get.height/25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorPalette.buttonColor,
                  ),
                  child: MaterialButton(onPressed: ()=>Get.to(()=>const ChangeEmail()),child: const Text("Continue",
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

  countrydropdown(){
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: CountryPickerDropdown(
              initialValue: 'AR',
              itemBuilder: _buildDropdownItem,
              priorityList:[
                      CountryPickerUtils.getCountryByIsoCode('GB'),
                      CountryPickerUtils.getCountryByIsoCode('CN'),
                    ],
              onValuePicked: (Country country) {
                
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

 

   
}