import 'package:flutter/material.dart';

class SkillsLogoDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "What i do",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                height: 1.0,
                fontSize: 50),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "I design and develop cross-platform mobile apps for Android and IOS using Flutter, with a focus on clean UI, efficient state management, and seamless API integration.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/html5.png',color: Colors.white,)),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    width: 60,
                    height: 60,
                    child: Image.asset('assets/images/css.png',color: Colors.white,)),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/dart.png')),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/flutter.webp',color: Colors.white,)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/firebase.png')),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/db.png')),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/node.webp')),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/images/wordpress.png',color: Colors.blue,)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "✦ Crafting clean and responsive user interfaces",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "✦ Managing app logic efficiently with best Flutter practices",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "✦ Integration of third party services such as Firebase/ AWS / Digital Ocean",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "✦ Seamless API integration and testing using Postman",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "✦ Payment gateway integration for real-time transactions",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "✦ Firebase Authentication for secure login systems",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "✦ Push notification implementation using Firebase Cloud Messaging (FCM)",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsLogoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "What i do",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  fontSize: 50),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "I design and develop cross-platform mobile apps for Android and IOS using Flutter, with a focus on clean UI, efficient state management, and seamless API integration.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/html5.png',color: Colors.white,)),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/css.png',color: Colors.white,)),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/dart.png')),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/flutter.webp',color: Colors.white,)),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/firebase.png')),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/db.png')),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/node.webp')),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/wordpress.png',color: Colors.blue,)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "✦ Crafting clean and responsive user interfaces",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Managing app logic efficiently with best Flutter practices",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Integration of third party services such as Firebase/ AWS / Digital Ocean",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Seamless API integration and testing using Postman",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Payment gateway integration for real-time transactions",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Firebase Authentication for secure login systems",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Push notification implementation using Firebase Cloud Messaging (FCM)",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsLogoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "What i do",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  fontSize: 32),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "I design and develop cross-platform mobile apps for Android and IOS using Flutter, with a focus on clean UI, efficient state management, and seamless API integration.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/html5.png',color: Colors.white,)),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                      width: 60,
                      height: 60,
                      child: Image.asset('assets/images/css.png',color: Colors.white,)),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/dart.png')),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/flutter.webp',color: Colors.white,)),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/firebase.png')),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/db.png')),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/node.webp')),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/images/wordpress.png',color: Colors.blue,)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'My focus is on :',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Crafting clean and responsive user interfaces",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Managing app logic efficiently with best Flutter practices",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Seamless API integration and testing using Postman",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Payment gateway integration for real-time transactions",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Firebase Authentication for secure login systems",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "✦ Push notification implementation using Firebase Cloud Messaging (FCM)",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
