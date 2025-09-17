import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:DeveloperFolio/configure/navigation_service.dart';
import 'package:DeveloperFolio/configure/routing.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        extendBodyBehindAppBar: true,
        endDrawer: NavigationDrawer(children: []),
        endDrawerEnableOpenDragGesture: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/one.png'), // Use your own image here
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 25.0, sigmaY: 25.0), // Strong blur
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 70,
                      alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   // border: Border(
                      //   //   bottom:
                      //   //       BorderSide(color: Colors.blueGrey.withOpacity(0.45)),
                      //   // ),
                      // ),
                      child: NavigationBar(
                        selectedIndex: 0,
                        onDestinationSelected: (int index) {
                          // Handle navigation change
                        },
                        indicatorColor: Colors.blueAccent,
                        backgroundColor: Colors.transparent,
                        labelTextStyle: MaterialStateProperty.all(
                          TextStyle(color: Colors.white),
                        ),
                        destinations: [
                          NavigationDestination(
                            icon: Image.asset(
                              'assets/images/home.png',
                              height: 30,
                              color: Colors.grey,
                            ),
                            selectedIcon: Image.asset(
                              'assets/images/home.png',
                              height: 30,
                              color: Colors.white,
                            ),
                            label: 'Home',
                          ),
                          NavigationDestination(
                            icon: Image.asset(
                              'assets/images/information-button.png',
                              height: 30,
                              color: Colors.grey,
                            ),
                            selectedIcon: Image.asset(
                              'assets/images/information-button.png',
                              height: 30,
                              color: Colors.white,
                            ),
                            label: 'About',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
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



/*import 'package:DeveloperFolio/configure/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:DeveloperFolio/configure/routing.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: NavigationDrawer(
          children: [],
        ),
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            NavigationBar(
              selectedIndex: 0,
              onDestinationSelected: (int index) {
                // Handle navigation change if needed
              },
              indicatorColor: Colors.blue,
              backgroundColor: Colors.transparent,
              destinations: [
                NavigationDestination(
                  icon: Image.asset(
                    'assets/images/home.png',
                    height: 30,
                    color: Colors.grey, // Default icon color
                  ),
                  selectedIcon: Image.asset(
                    'assets/images/home.png',
                    height: 30,
                    color: Colors.white, // White icon when selected
                  ),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    'assets/images/information-button.png',
                    height: 30,
                    color: Colors.grey, // Default icon color
                  ),
                  selectedIcon: Image.asset(
                    'assets/images/information-button.png',
                    height: 30,
                    color: Colors.white, // White icon when selected
                  ),
                  label: 'About',
                ),
              ],
            ),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/