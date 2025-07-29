import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPageDesk extends StatelessWidget {
  const ContactPageDesk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Contact Me", 
          style: TextStyle(fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
          textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          Text('Have a project in mind or just want to say hello? My inbox is always open — let’s connect.',
          style: TextStyle(color: Colors.grey, fontSize: 22),),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(CupertinoIcons.phone, color: Colors.green,),
          SizedBox(width: 10,),
          Text('+91 90287 72549',
          style: TextStyle(color: Colors.grey, fontSize: 20,),)
            ],
          ),
          SizedBox(height: 10,),
         Row(
           children: [
            Icon(CupertinoIcons.mail, color: Colors.red,),
          SizedBox(width: 10,),
              Text('shaikhalkama96.com',
          style: TextStyle(color: Colors.grey, fontSize: 20,)),
           ],
         ),
         SizedBox(height: 20,),
        Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.instagram, color: Colors.pinkAccent, size: 40,),
                       onPressed:  () 
                        {
                       js.context.callMethod("open", ["https://www.facebook.com/naveenjujaray"]);
                       },
                       )),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child:  GestureDetector(
                      child: Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue, size: 40,),
                      onTap: () {
                       js.context.callMethod("open", ["https://twitter.com/naveenjujaray"]);
                       },
                      ),
                       ),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.linkedin, color: Color.fromRGBO(40,103,178,1), size: 40, ),
                       onPressed: ()
                       {
                       js.context.callMethod("open", ["https://www.linkedin.com/in/shaikh-alkama"]);
                       },
                       )),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bloggerB, color: Colors.red, size: 40,),
                       onPressed: ()
                       {
                       js.context.callMethod("open", ["https://naveenjujaray.js.org"]);
                       },
                       )),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.github,  size: 40,), 
                      onPressed: ()
                      {
                       js.context.callMethod("open", ["https://github.com/SHAIKHALKAMA"]);
                       },
                      )),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.gitlab, color: Colors.orange, size: 40,), 
                      onPressed: ()
                      {
                       js.context.callMethod("open", ["https://www.gitlab.com/naveenjujaray"]);
                       },
                      )),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.medium,  size: 40,), 
                      onPressed: ()
                      {
                       js.context.callMethod("open", ["https://medium.com/@naveenjujaray"]);
                       },
                       )),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.dev, size: 40,), 
                      onPressed: ()
                      {
                       js.context.callMethod("open", ["https://dev.to/naveenjujaray"]);
                       },
                       )),
                ),
                Expanded(
                                  child: Container( width: 60,height: 60,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.reddit, color: Colors.deepOrangeAccent,size: 40,), 
                      onPressed: ()
                      {
                       js.context.callMethod("open", ["https://www.reddit.com/user/jujaraynaveen"]);
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
            Text("Contact Me", 
            style: TextStyle(fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            
            ),
            SizedBox(height: 10,),
            Text('Have a project in mind or just want to say hello? My inbox is always open — let’s connect.',
            style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
               Icon(CupertinoIcons.phone, color: Colors.green,),
            SizedBox(width: 10,),
            Text('+91 90287 72549',
            style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
              ],
            ),
            SizedBox(height: 10,),
           Row(
             children: [
                Icon(CupertinoIcons.mail, color: Colors.red,),
            SizedBox(width: 10,),
                Text('shaikhalkama96.com',
            style: TextStyle(color: Colors.grey, fontSize: 20,),)
             ],
           ),
           SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue, size: 40,), 
                        onPressed: () 
                          {
                         js.context.callMethod("open", ["https://www.facebook.com/naveenjujaray"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue, size: 40,), 
                        onPressed: ()
                         {
                         js.context.callMethod("open", ["https://twitter.com/naveenjujaray"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.linkedin, color: Color.fromRGBO(40,103,178,1), size: 40, ), 
                        onPressed: ()
                         {
                         js.context.callMethod("open", ["https://www.linkedin.com/in/shaikh-alkama"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.bloggerB, color: Colors.red, size: 40,), 
                        onPressed: ()
                         {
                         js.context.callMethod("open", ["https://naveenjujaray.js.org"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(

                        icon: Icon(FontAwesomeIcons.github, size: 40,),
                        onPressed:()
                        {
                         js.context.callMethod("open", ["https://github.com/SHAIKHALKAMA"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.gitlab, color: Colors.orange, size: 40,), 
                        onPressed: ()
                        {
                         js.context.callMethod("open", ["https://www.gitlab.com/naveenjujaray"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.medium,  size: 40,), 
                        onPressed: ()
                        {
                         js.context.callMethod("open", ["https://medium.com/@naveenjujaray"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.dev, size: 40,), 
                        onPressed: ()
                        {
                         js.context.callMethod("open", ["https://dev.to/naveenjujaray"]);
                         },
                         )),
                  ),
                  Expanded(
                                    child: Container( width: 60,height: 60,
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.reddit, color: Colors.deepOrangeAccent,size: 40,), 
                        onPressed: ()
                        {
                         js.context.callMethod("open", ["https://www.reddit.com/user/jujaraynaveen"]);
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
            Text("Contact Me", 
            style: TextStyle(fontWeight: FontWeight.w800, height: 1.0, fontSize: 32),
            
            ),
            SizedBox(height: 10,),
            Text('Have a project in mind or just want to say hello? My inbox is always open — let’s connect.',
            style: TextStyle(color: Colors.grey, fontSize: 18),),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(CupertinoIcons.phone, color: Colors.green,),
            SizedBox(width: 10,),
            Text('+91 90287 72549',
              style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              ],
            ),
            SizedBox(height: 10,),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
                Container(
                  child: Icon(CupertinoIcons.mail, color: Colors.red,),
                ),
            SizedBox(width: 10,),
                Expanded(
                                child: Container(
                                  child: Text('shaikhalkama96.com',
            style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
                                ),
                ),
             ],
           ),
           SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.instagram, color: Colors.pinkAccent, size: 40,), 
                      onPressed: () 
                          {
                         js.context.callMethod("open", ["https://www.facebook.com/naveenjujaray"]);
                         },
                         )),
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue, size: 40,), 
                      onPressed: ()
                         {
                         js.context.callMethod("open", ["https://twitter.com/naveenjujaray"]);
                         },
                         )),
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.linkedin, color: Color.fromRGBO(40,103,178,1), size: 40, ), 
                      onPressed: ()
                         {
                         js.context.callMethod("open", ["https://www.linkedin.com/in/shaikh-alkama"]);
                         },
                         )),
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.bloggerB, color: Colors.red, size: 40,), 
                      onPressed: ()
                         {
                         js.context.callMethod("open", ["https://naveenjujaray.js.org"]);
                         },
                         )),
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.github,  size: 40,), onPressed: ()
                        {
                         js.context.callMethod("open", ["https://github.com/SHAIKHALKAMA"]);
                         },
                         )),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.gitlab, color: Colors.orange, size: 40,), 
                      onPressed: ()
                        {
                         js.context.callMethod("open", ["https://www.gitlab.com/naveenjujaray"]);
                         },
                         )),
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.medium,  size: 40,), 
                      onPressed: ()
                        {
                         js.context.callMethod("open", ["https://medium.com/@naveenjujaray"]);
                         },
                         )),
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.dev, size: 40,), 
                      onPressed: ()
                        {
                         js.context.callMethod("open", ["https://dev.to/naveenjujaray"]);
                         },
                         )),
                  Container( width: 55,height: 55,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.reddit, color: Colors.deepOrangeAccent,size: 40,),
                     onPressed: ()
                        {
                         js.context.callMethod("open", ["https://www.reddit.com/user/jujaraynaveen"]);
                         },)),
              ],
              ),
          ],
        ),
      ),
    );
  }
}