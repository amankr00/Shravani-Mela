import 'package:flutter/material.dart';
import 'package:shravani/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late bool hov = true;
  late String type;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // if (type == "Mobile") {
    //   pRt = pRt * 0.02;
    // } else if (type == "tablet") {
    //   pRt = pRt * 0.08;
    //   pLt = pLt * 0.02;
    // } else {
    //   if (pRt < 1000) {
    //     pRt = pRt * 0.14;
    //     pLt = pLt * 0.4;
    //   } else {
    //     pRt = 150;
    //     pLt = 50;
    //   }
    // }


    return MaterialApp(
    
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeMain(),
        }
    );
  }
}

