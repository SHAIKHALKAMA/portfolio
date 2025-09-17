import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
// ignore: deprecated_member_use
import 'dart:js' as js;

class AchieveDesk extends StatefulWidget {
  @override
  _AchieveDeskState createState() => _AchieveDeskState();
}

class _AchieveDeskState extends State<AchieveDesk> {
  final PageController _pageController = PageController(viewportFraction: 0.33);
  Timer? _timer;
  int _currentIndex = 0;

  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/images/w2cJobs.png',
      'title': 'Way2Cure Jobs',
      'link': 'https://play.google.com/store/apps/details?id=com.app.way2cure',
      'link1': '',
    },
    {
      'image': 'assets/images/w2c logo.png',
      'title': 'Way2Cure',
      'link': 'https://play.google.com/store/apps/details?id=com.app.way2cure',
      'link1': 'https://apps.apple.com/in/app/way2cure/id6747065092',
    },
    {
      'image': 'assets/images/altus-logo.png',
      'title': 'Altus Airflow',
      'link': 'https://play.google.com/store/apps/details?id=com.app.w2c',
      'link1': '',
      'applyGradient': true, // We'll check this to apply gradient
    },
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _currentIndex = (_currentIndex + 1) % items.length;
      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double cardWidth = constraints.maxWidth * 0.33 > 300
            ? 300
            : constraints.maxWidth * 0.33;
        final double activeCardWidth = cardWidth * 1.2;

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Row(
                  children: [
                    Text(
                      'Achievements ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 50),
                    ),
                    Image.asset('assets/images/trophy.png', scale: 8),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE!',
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
                SizedBox(height: 25),
                // Carousel
                SizedBox(
                  height: 340,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: items.length,
                    onPageChanged: (index) => setState(() {
                      _currentIndex = index;
                    }),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final isActive = _currentIndex == index;
                      final width = isActive ? activeCardWidth : cardWidth;
                      final height = isActive ? 350.00 : 300.00;

                      return Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.0),
                        child: Transform.scale(
                          scale: isActive ? 1.0 : 0.9,
                          child: Container(
                            width: width,
                            height: height,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueGrey.withOpacity(0.2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                item['applyGradient'] == true
                                    ? ShaderMask(
                                        shaderCallback: (bounds) {
                                          return LinearGradient(
                                           colors: [Colors.grey,Colors.white,Colors.blue, Colors.white,Colors.grey],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds);
                                        },
                                        blendMode: BlendMode.srcIn,
                                        child: Image.asset(
                                          item['image'],
                                          width: width * 0.6,
                                          height: 150,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    : Image.asset(
                                        item['image'],
                                        width: width * 0.6,
                                        height: 150,
                                        fit: BoxFit.contain,
                                      ),
                                SizedBox(height: 10),
                                // Title
                                // Text(
                                //   item['title'],
                                //   style: TextStyle(
                                //       fontSize: 24,
                                //       fontWeight: FontWeight.bold),
                                //   textAlign: TextAlign.center,
                                // ),
                                // SizedBox(height: 10),
                                // Store links
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (item['link1'].toString().isNotEmpty)
                                      InkWell(
                                        onTap: () => js.context
                                            .callMethod("open", [item['link1']]),
                                        child: Image.asset(
                                          'assets/images/appstore.png',
                                          scale: 4,
                                        ),
                                      ),
                                    SizedBox(width: 20),
                                    InkWell(
                                      onTap: () => js.context
                                          .callMethod("open", [item['link']]),
                                      child: Image.asset(
                                        'assets/images/googleplay.png',
                                        scale: 2.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                // Indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    items.length,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      width: _currentIndex == index ? 12.0 : 8.0,
                      height: _currentIndex == index ? 12.0 : 8.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


class AchieveTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 480, // Slightly smaller for better aesthetics
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Achievements ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                  ),
                ),
                Image.asset(
                  'assets/images/trophy.png',
                  scale: 8, // Slightly smaller scale for visual balance
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      // Container 1
                      Container(
                        width: 300, // Optimized width
                        height: 300, // Optimized height for a cool look
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.blueGrey),
                          borderRadius: BorderRadius.circular(8),
                          // color: Colors.blueGrey.withOpacity(0.1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 12.0,
                              spreadRadius: 3,
                              offset: Offset(6.0, 6.0),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/w2c logo.png',
                              width:
                                  220, // Slightly larger image width for emphasis
                              height: 150, // Balanced height
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://play.google.com/store/apps/details?id=com.app.way2cure&pcampaignid=web_share"
                                    ]);
                                  },
                                  child: Image.asset(
                                    'assets/images/appstore.png',
                                    scale: 4,
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      "https://play.google.com/store/apps/details?id=com.app.way2cure&pcampaignid=web_share"
                                    ]);
                                  },
                                  child: Image.asset(
                                    'assets/images/googleplay.png',
                                    scale: 2.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // Container 2
                      Container(
                        width: 300,
                        height: 300,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color:Colors.blueGrey),
                          // color: Colors.blueGrey.withOpacity(0.1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 12.0,
                              spreadRadius: 3,
                              offset: Offset(6.0, 6.0),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/w2cJobs.png',
                              width: 230, // Increased image width for emphasis
                              height:
                                  160, // Slightly taller to balance the container
                            ),
                            // SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                js.context.callMethod("open", [
                                  "https://play.google.com/store/apps/details?id=com.app.w2c"
                                ]);
                              },
                              child: Image.asset(
                                'assets/images/googleplay.png',
                                scale: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // Container 3
                      Container(
                        width: 300,
                        height: 300,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color:Colors.blueGrey),
                          // color: Colors.blueGrey.withOpacity(0.1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 12.0,
                              spreadRadius: 3,
                              offset: Offset(6.0, 6.0),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Colors.grey,Colors.white,Colors.blue, Colors.white,Colors.grey],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds);
                              },
                              blendMode: BlendMode
                                  .srcIn, // Keeps image shape, applies gradient
                              child: Image.asset(
                                'assets/images/altus-logo.png',
                                color: Colors.lightBlue,
                                width:
                                    230, // Increased image width for emphasis
                                height: 160, // Balanced height
                              ),
                            ),
                            // SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                js.context.callMethod("open", [
                                  "https://play.google.com/store/apps/details?id=com.app.altus"
                                ]);
                              },
                              child: Image.asset(
                                'assets/images/googleplay.png',
                                scale: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AchieveMob extends StatefulWidget {
  @override
  State<AchieveMob> createState() => _AchieveMobState();
}

class _AchieveMobState extends State<AchieveMob> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (!_scrollController.hasClients) return;

      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.offset;

      if (currentScroll < maxScroll) {
        _scrollController.animateTo(
          currentScroll + 200,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _scrollController.animateTo(
          0,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Achievements ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Image.asset(
                'assets/images/trophy.png',
                scale: 14,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Row(
              children: [
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://apps.apple.com/in/app/way2cure/id6747065092"
                    ]);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/w2c logo.png',
                          width: 150,
                          height: 85,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  js.context.callMethod("open", [
                                    "https://apps.apple.com/in/app/way2cure/id6747065092"
                                  ]);
                                },
                                child: Image.asset('assets/images/appstore.png',
                                    scale: 7)),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                js.context.callMethod("open", [
                                  "https://play.google.com/store/apps/details?id=com.app.way2cure&pcampaignid=web_share"
                                ]);
                              },
                              child: Image.asset('assets/images/googleplay.png',
                                  scale: 5),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://play.google.com/store/apps/details?id=com.app.w2c"
                    ]);
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/w2cJobs.png',
                          width: 150,
                          height: 85,
                        ),
                        GestureDetector(
                          onTap: () {
                            js.context.callMethod("open", [
                              "https://play.google.com/store/apps/details?id=com.app.w2c"
                            ]);
                          },
                          child: Image.asset('assets/images/googleplay.png',
                              scale: 5),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () => js.context.callMethod("open", [
                    "https://play.google.com/store/apps/details?id=com.app.altus"
                  ]),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                         ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Colors.grey,Colors.white,Colors.blue, Colors.white,Colors.grey],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds);
                              },
                              blendMode: BlendMode
                                  .srcIn, // Keeps image shape, applies gradient
                          child: Image.asset(
                            'assets/images/altus-logo.png',
                            width: 150,
                            height: 85,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            js.context.callMethod("open", [
                              "https://play.google.com/store/apps/details?id=com.app.altus"
                            ]);
                          },
                          child: Image.asset('assets/images/googleplay.png',
                              scale: 5),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*
class AchieveDesk extends StatefulWidget {
  const AchieveDesk({Key? key}) : super(key: key);

  @override
  _AchieveDeskState createState() => _AchieveDeskState();
}

class _AchieveDeskState extends State<AchieveDesk> {
  final PageController _pageController = PageController(viewportFraction: 0.33);
  Timer? _timer;
  int _currentIndex = 0;
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/images/w2cJobs.png',
      'title': 'Way2Cure Jobs',
      'link1': '',
      'link':
          'https://play.google.com/store/apps/details?id=com.app.way2cure&pcampaignid=web_share',
      'isNetworkImage': false,
    },
    {
      'image': 'assets/images/w2c logo.png',
      'title': 'Way2Cure',
      'link1': 'https://apps.apple.com/in/app/way2cure/id6747065092',
      'link':
          'https://play.google.com/store/apps/details?id=com.app.way2cure&pcampaignid=web_share',
      'isNetworkImage': false,
    },
    {
      'image': 'assets/images/altus-logo.png',
      'title': 'Altus Airflow',
      'link1': '',
      'link': 'https://play.google.com/store/apps/details?id=com.app.w2c',
      'isNetworkImage': false,
    },
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentIndex < items.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0; // Loop back to start
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double cardWidth = constraints.maxWidth * 0.33 > 300
            ? 300
            : constraints.maxWidth * 0.33;
        final double activeCardWidth = cardWidth * 1.2;

        return SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Achievements ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 50),
                    ),
                    Image.asset(
                      'assets/images/trophy.png',
                      scale: 8,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 340,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: items.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          double scale = 0.8;
                          if (_pageController.position.haveDimensions) {
                            final double pageOffset = _pageController.page ?? 0;
                            final double diff = (index - pageOffset).abs();
                            scale = diff < 0.5
                                ? 1.0
                                : 0.8; // Center card is full size, others are 80%
                          }
                          return Transform.scale(
                            scale: scale,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                width:
                                    scale == 1.0 ? activeCardWidth : cardWidth,
                                height: scale == 1.0 ? 350 : 300,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blueGrey.withOpacity(0.2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 10.0,
                                      spreadRadius: 5,
                                      offset: const Offset(5.0, 5.0),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    items[index]['isNetworkImage']
                                        ? Image.network(
                                            items[index]['image'],
                                            width: (scale == 1.0
                                                    ? activeCardWidth
                                                    : cardWidth) *
                                                0.6,
                                            height: scale == 1.0 ? 200 : 175,
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    const Icon(
                                              Icons.error,
                                              size: 170,
                                              color: Colors.red,
                                            ),
                                          )
                                        : items[index]['icon'] != null
                                            ? Icon(
                                                items[index]['icon'],
                                                size: scale == 1.0 ? 200 : 170,
                                                color: Colors.redAccent,
                                              )
                                            : Container(
                                                // color: Colors.grey,
                                                child: Image.asset(
                                                  items[index]['image'],
                                                  width: (scale == 2.0
                                                          ? activeCardWidth
                                                          : cardWidth) *
                                                      0.6,
                                                  height:
                                                      scale == 1.0 ? 200 : 175,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                    const SizedBox(height: 5),
                                    Text(
                                      items[index]['title'],
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        items[index]['link1'].isNotEmpty
                                            ? InkWell(
                                                onTap: () {
                                                  js.context.callMethod("open",
                                                      [items[index]['link']]);
                                                },
                                                child: Image.asset(
                                                  'assets/images/appstore.png',
                                                  scale: 5,
                                                ))
                                            : SizedBox.shrink(),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                            onTap: () {
                                              js.context.callMethod("open",
                                                  [items[index]['link']]);
                                            },
                                            child: Image.asset(
                                              'assets/images/googleplay.png',
                                              scale: 3,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                // Carousel indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    items.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      width: _currentIndex == index ? 12.0 : 8.0,
                      height: _currentIndex == index ? 12.0 : 8.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentIndex == index ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
 */