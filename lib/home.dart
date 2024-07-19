import 'package:flutter/material.dart';
import 'package:shravani/mobile.dart';
import 'package:shravani/structure/navbar.dart';
import 'package:shravani/structure/p1.dart';
import 'package:responsive_builder/responsive_builder.dart';




class HomeMain extends StatelessWidget{
@override
 Widget build(BuildContext context) {
 return GestureDetector(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
            top: true,
            child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => MobileLayout(),
              desktop: (BuildContext context) => DesktopLayout() ,
              // tablet: (BuildContext context) => ,
            )),
      ),
    );

    }
    }
 
 class DesktopLayout extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 backgroundColor: Colors.white,
 body: Column(
 children: [
 navbar(),
 SizedBox(height: 40,),
 Phase1(),
 ],),
 );
}
}
