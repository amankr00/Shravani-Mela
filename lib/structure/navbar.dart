import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 10),
                  child: Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/shra.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Shravani Mela',
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
