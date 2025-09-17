import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPageDesk extends StatelessWidget {
  const ContactPageDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Me",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.0, fontSize: 50,color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Have a project in mind or just want to say hello? My inbox is always open — let’s connect.',
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => js.context.callMethod("open", ["tel:+919028772549"]),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.phone,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+91 90287 72549',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            splashColor: const Color.fromARGB(0, 219, 123, 123),
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => js.context
                .callMethod("open", ["mailto:shaikhalkama96@gmail.com"]),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.mail,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('shaikhalkama96@gmail.com',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
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
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.grey,
                        size: 40,
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
                      icon: Icon(
                        color: Colors.white,
                        FontAwesomeIcons.medium,
                        size: 40,
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
                      icon: Icon(
                        FontAwesomeIcons.dev,
                        color: Colors.grey,
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
        ],
      ),
    );
  }
}

class ContactPageTab extends StatelessWidget {
  const ContactPageTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Me",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50,color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Have a project in mind or just want to say hello? My inbox is always open — let’s connect.',
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () => js.context.callMethod("open", ["tel:+919028772549"]),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.phone,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+91 90287 72549',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () => js.context
                  .callMethod("open", ["mailto:shaikhalkama96@gmail.com"]),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.mail,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'shaikhalkama96@gmail.com',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  )
                ],
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
                        icon: Icon(
                          FontAwesomeIcons.github,
                        color: Colors.grey,
                          size: 40,
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
                        icon: Icon(
                          FontAwesomeIcons.dev,
                        color: Colors.grey,
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
          ],
        ),
      ),
    );
  }
}

class ContactPageMob extends StatelessWidget {
  const ContactPageMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Me",
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 32,color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Have a project in mind or just want to say hello? My inbox is always open — let’s connect.',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () => js.context.callMethod("open", ["tel:+919028772549"]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.phone,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+91 90287 72549',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () => js.context
                  .callMethod("open", ["mailto:shaikhalkama96@gmail.com"]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      CupertinoIcons.mail,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'shaikhalkama96@gmail.com',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ),
                ],
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
                      icon: Icon(
                        FontAwesomeIcons.medium,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://medium.com/@shaikhalkama96"]);
                      },
                    )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
