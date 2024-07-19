import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Phase1 extends StatefulWidget {
  // final double pRt;
  // final double pLt;
  // final bool hovMD;
  Phase1();
  @override
  _Phase1State createState() => _Phase1State();
}

class _Phase1State extends State<Phase1> {

  _Phase1State();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // left body
        Flexible(
          flex: 4,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                   Container(
                          // color : Colors.pink,
                          width: MediaQuery.of(context).size.width * 0.55,
                          // ${pRt}   ${MediaQuery.of(context).size.width }
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'भागलपुर जिला प्रशासन \n',
                                    style: TextStyle(
                                      fontSize: 42,
                                      letterSpacing: 0,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: 'श्रावणी मेला 2024  ',
                                    style: TextStyle(
                                      fontSize: 42,
                                      letterSpacing: 0,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Color.fromARGB(255, 255, 145, 42),
                                    )),
                                TextSpan(
                                    text: 'में आपका\nस्वागत करता है!',
                                    style: TextStyle(
                                      fontSize: 42,
                                      letterSpacing: 0,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          )),
                  Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: HoverEffectExample()),
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
                  
                ]),
          ),
        ),

        Flexible(
            flex: 3,
            child: Column(
              
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                                    SizedBox(height: 80),

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0,0,80,0),
                    child: Container(
                       //color: Colors.blue,
                        child: Image.asset('assets/images/shra2.png',
                            fit: BoxFit.cover),
                      ),
                  ),
                  
                ]))
      ],
    );
  }

  Row featureRow(String s, String s2) {
    return Row(
      children: [
        Container(
        
          height: 20,
          width: 20,
          child: Image.asset(
            'assets/images/check_circle.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(width: 200,
        child: Text(s,
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 0,
              fontFamily: 'poppins',
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Colors.black,
            )) ,),
       
        SizedBox(
          width: 50,
        ),
        Container(
          height: 20,
          width: 20,
          child: Image.asset(
            'assets/images/check_circle.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(s2,
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 0,
              fontFamily: 'poppins',
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Colors.black,
            )),
      ],
    );
  }
}


class HoverEffectExample extends StatefulWidget {
  // late bool hovMD;
  // final bool hovMD;

  HoverEffectExample();

  @override
  _HoverEffectExampleState createState() => _HoverEffectExampleState();
}

bool h = false;

class _HoverEffectExampleState extends State<HoverEffectExample> {
  // final bool hovMD;

  _HoverEffectExampleState();

  bool isDownloadHovered = false;
  bool h = true; // Assuming h is declared somewhere

  void _updateHover(bool hover) {
    setState(() {
      isDownloadHovered = hover;
    });
  }

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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
          onEnter: (event) => _updateHover(true),
          onExit: (event) => _updateHover(false),
          child: GestureDetector(
            onTap: () {
              if (h == true) {
                // stark();
              }
            },
            child: Padding(
              padding: EdgeInsetsDirectional.only(top: 30),
              child: GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://play.google.com/store/apps/details?id=com.idaestoapp.neelkanthapp');
                  },
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isDownloadHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isDownloadHovered = false;
                      });
                    },
                    child: Transform.scale(
                      scale: isDownloadHovered ? 1.03 : 1.0,
                      child: Container(
                        width: 220,
                        decoration: BoxDecoration(
                          color: (isDownloadHovered
                              ? Color.fromARGB(255, 252, 110, 39)
                              : Color(0xFFff5700)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Color.fromARGB(51, 237, 236, 236),
                              offset: Offset(0, 2),
                              spreadRadius: isDownloadHovered ? 3.8 : 0.5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 15, 5, 15),
                                child: Text(
                                  'Download app',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    letterSpacing: 0,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                margin: EdgeInsets.only(
                                    left: isDownloadHovered ? 10 : 0),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Color(0xFFFFFFFF),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          )),
    ]);
  }
}