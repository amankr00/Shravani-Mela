import 'package:flutter/material.dart';
import 'package:shravani/structure/navbar.dart';
import 'package:shravani/structure/p1.dart';



class HomeMain extends StatelessWidget{
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
