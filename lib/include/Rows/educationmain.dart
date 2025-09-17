import 'package:flutter/material.dart';


class EduDesk extends StatelessWidget {
  const EduDesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Education',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50,color: Colors.white),
                ),
                const SizedBox(height: 30),
                // YCMOU
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 15.0,
                            spreadRadius: 5.0,
                            offset: const Offset(0.0, 10.0),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/ycmou.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Yashwanthrao Chavan Maharashtra Open University, Nashik",
                            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Bachelor's in Computer Applications",
                            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600,color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            "2020 - 2024",
                            style: TextStyle(fontSize: 22,color: Colors.grey),
                          ),
                         
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // Scholars
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 15.0,
                            spreadRadius: 5.0,
                            offset: const Offset(0.0, 10.0),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/scholars.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Scholars English High School And Jr College",
                            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Maharashtra State Board of Secondary & Higher Secondary Education, Pune",
                            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600,color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            "2017 - 2019",
                            style: TextStyle(fontSize: 22,color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // New Era
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 15.0,
                            spreadRadius: 5.0,
                            offset: const Offset(0.0, 10.0),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/new era.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Era Eng. High School, Bhiwandi",
                            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Maharashtra State Board (msbshse), Pune",
                            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600,color: Colors.grey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Text(
                            "2017",
                            style: TextStyle(fontSize: 22,
                            color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}

class EduTab extends StatelessWidget {
  const EduTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50,color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 150,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/ycmou.png'),
                        ),
                      ),
                      //child: Image.asset('assets/images/gitam.png'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Yashwanthrao Chavan Maharashtra Open University, Nashik",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                  Text(
                    "Bachelor's in Computer Applications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.grey),
                  ),
                  Text(
                    "2020 - 2024",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey
                    ),
                  ),
                  Text(
                    "•  Participated in Rural Development and Social Events as Student Volunteer in NSS for 2 years",
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          //Scholars
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 150,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              0.0, 
                              10.0,
                            ),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/scholars.png'),
                        ),
                      ),
                     
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "The Scholars English High School And Jr College",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                  Text(
                    "Maharashtra State Board (msbshse) Pune",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.grey),
                  ),
                  Text(
                    "2017 - 2019",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //SCHOOL
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 150,
                      width: 150,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/new era.png'),
                        ),
                      ),
                      //child: Image.asset('assets/images/gitam.png'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "New Era Eng. High School, Bhiwandi",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                  Text(
                    "Maharashtra State Board (msbshse), Pune",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.grey),
                  ),
                  Text(
                    "2017",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class EduMob extends StatelessWidget {
  const EduMob({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32,color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5.0),
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/ycmou.png'),
                        ),
                      ),
                      //child: Image.asset('assets/images/gitam.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Yashwanthrao Chavan Maharashtra Open University, Nashik",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.grey,),
                ),
                Text(
                  "Bachelor's in Computer Applications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.grey),
                ),
                Text(
                  "2020 - 2024",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey
                  ),
                ),
                
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5.0),
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/scholars.png'),
                        ),
                      ),
                      //child: Image.asset('assets/images/gitam.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The Scholars High School & Jr College",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.grey),
                ),
                Text(
                  "Maharashtra State Board (msbshse), Pune",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.grey),
                ),
                Text(
                  "2017 - 2019",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5.0),
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/new era.png'),
                        ),
                      ),
                      //child: Image.asset('assets/images/gitam.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New Era Eng. High School, Bhiwandi",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.grey),
                ),
                Text(
                  "Maharashtra State Board (msbshse), Pune",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.grey),
                ),
                Text(
                  "2017",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
