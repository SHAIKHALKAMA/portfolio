import 'package:DeveloperFolio/configure/navigation_service.dart';
import 'package:DeveloperFolio/configure/routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePageDesk extends StatelessWidget {
  const WelcomePageDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "Hi ! I'm Shaikh Alkama",
                textStyle: GoogleFonts.alegreya(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  height: 1.3,
                  fontSize: 50,
                ),
                textAlign: TextAlign.center,
                speed: const Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "I specialize in building clean, user-friendly mobile apps with responsive UI and solid API integration. I'm always focused on performance, maintainability, and delivering smooth user experiences",
            style: TextStyle(
              fontSize: 21,
              color: Colors.grey,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.pinkAccent,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.instagram.com/__thealkamasheikkk/"]);
                      },
                    )),
              ),

              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.linkedin.com/in/shaikh-alkama"]);
                      },
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.bloggerB,
                        color: Colors.red,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://shaikhalkamablogs.blogspot.com/"]);
                      },
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.github,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://github.com/SHAIKHALKAMA"]);
                      },
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.medium,
                        size: 40,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://medium.com/@shaikhalkama96"]);
                      },
                    )),
              ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.dev,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://dev.to/thealkamasheikkk"]);
                      },
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://drive.google.com/file/d/1C30agUYdzL6qpcFCQdfrPfzKJ6J-zUTt/view?usp=sharing"
                    ]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text(
                      'OPEN RESUME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WelcomePageTab extends StatelessWidget {
  const WelcomePageTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Hi ! I'm Shaikh Alkama.        ",
                    textStyle: GoogleFonts.alegreya(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      height: 1.3,
                      fontSize: 50,
                    ),
                    textAlign: TextAlign.justify,
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "I specialize in building clean, user-friendly mobile apps with responsive UI and solid API integration. I'm always focused on performance, maintainability, and delivering smooth user experiences",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        hoverColor: Colors.grey.withOpacity(0.2),
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod("open", [
                            "https://www.instagram.com/__thealkamasheikkk/"
                          ]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        hoverColor: Colors.grey.withOpacity(0.2),
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod("open",
                              ["https://www.linkedin.com/in/shaikh-alkama"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        hoverColor: Colors.grey.withOpacity(0.2),
                        icon: Icon(
                          FontAwesomeIcons.bloggerB,
                          color: Colors.red,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://shaikhalkamablogs.blogspot.com/"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        hoverColor: Colors.grey.withOpacity(0.2),
                        icon: Icon(
                          FontAwesomeIcons.github,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://github.com/SHAIKHALKAMA"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        hoverColor: Colors.grey.withOpacity(0.2),
                        icon: Icon(
                          FontAwesomeIcons.medium,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://medium.com/@shaikhalkama96"]);
                        },
                      )),
                ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        hoverColor: Colors.grey.withOpacity(0.2),
                        icon: Icon(
                          FontAwesomeIcons.dev,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://dev.to/thealkamasheikkk"]);
                        },
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://drive.google.com/file/d/1C30agUYdzL6qpcFCQdfrPfzKJ6J-zUTt/view?usp=sharing"
                    ]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      'OPEN RESUME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
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

class WelcomePageMob extends StatelessWidget {
  const WelcomePageMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Hi ! I'm Shaikh Alkama",
                    textStyle: GoogleFonts.alegreya(
                      letterSpacing: 2.5,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "I specialize in building clean, user-friendly mobile apps with responsive UI and solid API integration. I'm always focused on performance, maintainability, and delivering smooth user experiences",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.pinkAccent,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.instagram.com/__thealkamasheikkk/"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.linkedin.com/in/shaikh-alkama"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.bloggerB,
                        color: Colors.red,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://shaikhalkamablogs.blogspot.com/"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://github.com/SHAIKHALKAMA"]);
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      hoverColor: Colors.grey.withOpacity(0.2),
                      icon: Icon(
                        FontAwesomeIcons.dev,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://dev.to/thealkamasheikkk"]);
                      },
                    )),
                    Container(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          hoverColor: Colors.grey.withOpacity(0.2),
                          icon: Icon(
                            FontAwesomeIcons.medium,
                            size: 40,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://medium.com/@shaikhalkama96"]);
                          },
                        )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        locator<NavigationService>().navigateTo(ContactRoute),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        'CONTACT ME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod("open", [
                        "https://drive.google.com/file/d/1C30agUYdzL6qpcFCQdfrPfzKJ6J-zUTt/view?usp=sharing"
                      ]);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Center(
                        child: Text(
                          'OPEN RESUME',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
