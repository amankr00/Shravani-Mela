import 'package:flutter/material.dart';
import 'package:shravani/mobile/test.dart';
import 'package:shravani/structure/navbar.dart';
import 'package:shravani/structure/p1.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:url_launcher/url_launcher.dart';


class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Stack(children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [MobileContainer()],
                ),
              ),
            ),
          ],
        ),
        //mNavbar(),
      ]),
    );
  }
}

class MobileContainer extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<MobileContainer> {
  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 10.0, top: 60),
              child: Container(
                  // color : Colors.pink,
                  width: MediaQuery.of(context).size.width * 0.77,
                  // ${pRt}   ${MediaQuery.of(context).size.width }
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'भागलपुर जिला प्रशासन ',
                            style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 0,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                            )),
                        TextSpan(
                            text: 'श्रावणी मेला 2024  ',
                            style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 0,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              color: Color.fromARGB(255, 255, 145, 42),
                            )),
                        TextSpan(
                            text: 'में आपका स्वागत करता है!',
                            style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 0,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ))),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 30),
            child: MouseRegion(
              child: GestureDetector(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: InkWell(
                    onTap: (
                    ) {
                     _launchURL(
                        'https://play.google.com/store/apps/details?id=com.idaestoapp.neelkanthapp');
                  },
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 252, 110, 39),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Color.fromARGB(51, 237, 236, 236),
                            offset: Offset(0, 2),
                            spreadRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 15, 5, 15),
                              child: Text(
                                'Download app',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  letterSpacing: 0,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Color(0xFFFFFFFF),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text('ऐप की विशेषताएँ:',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 0,
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Colors.black,
              )),
          SizedBox(
            height: 20,
          ),
          featureRow('गंगा आरती', 'GPS और फोटो के साथ'),
          SizedBox(
            height: 10,
          ),
          featureRow('फोटो गैलरी', 'फोटो प्रतियोगिता'),
          SizedBox(
            height: 10,
          ),
          featureRow("वर्चुअल पूजा का आनंद", 'आपातकालीन संपर्क'),
         
          SizedBox(
            height: 50,
          ),

          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 0, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Container(
                    width: screenWidth * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Image.asset(
                        'assets/images/shra2.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row featureRow(String s, String s2) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Flexible(
          flex: 3,
          child: Row(children: [ 
          SizedBox(
          width: 20,
        ),
          Container(
          height: 16,
          width: 16,
          child: Image.asset(
            'assets/images/ho.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 15,
        ),
          Container(
            child: Text(s,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                )),
          ),]),
        ),
        
        Flexible(
          flex: 3,
          child: Row(children: [ 
          SizedBox(
          width: 30,
        ),
          Container(
          height: 16,
          width: 16,
          child: Image.asset(
            'assets/images/ho.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 15,
        ),
          Container(
            child: Text(s2,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                )),
          ),]),
        ),
      ],
    );
  }
}
