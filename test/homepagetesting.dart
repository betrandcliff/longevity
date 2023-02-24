


import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:longevity/main.dart';

 void main() {
   testWidgets("TESTING ASSETS IMAGE WIDGE", (WidgetTester tester) async{
     await tester.pumpWidget(MyHomePage());

     expect(find.byWidget(Image.asset("assets/images/logo.png")), findsOneWidget);

   } );
}