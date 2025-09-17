import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: FooterDesk(),
      tablet: FooterTab(),
      mobile: FooterMob(),      
    );
  }
}

class FooterDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text('made by ',style: TextStyle(
                  color: Colors.grey,
                ),),
                Image.asset('assets/images/heart.png',scale: 18.0,),
                Text(" Shaikh Alkama",style: GoogleFonts.montez(
                          letterSpacing: 2.5,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FooterTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(
              children: [
                Text('made by ',style: TextStyle(
                 color: Colors.grey,
                ),),
                Image.asset('assets/images/heart.png',scale: 18.0,),
                Text(" Shaikh Alkama",style: GoogleFonts.montez(
                          letterSpacing: 2.5,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),)
              ],
            )
            // Text('Made with ❤️ by Shaikh Alkama',style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.grey.shade500),)
          ],
        ),
      ),
    );
  }
}

class FooterMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Row(
              children: [
                Text('made by ',style: TextStyle(
                  color: Colors.grey,
                ),),
                Image.asset('assets/images/heart.png',scale: 18.0,),
                Text(" Shaikh Alkama",style: GoogleFonts.montez(
                          letterSpacing: 2.5,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),)
              ],
            ),
      ],
    ),
        ),
      );
  }
}