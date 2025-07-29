  
import 'package:DeveloperFolio/configure/navigation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:DeveloperFolio/configure/routing.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: NavigationDrawer(children: [],),
        endDrawerEnableOpenDragGesture: false,
        
        body: Column(
          children: <Widget>[
           NavigationBar(
  selectedIndex: 0,
  onDestinationSelected: (int index) {
    // handle navigation change if needed
  },
  destinations:  [
    NavigationDestination(
      icon: Image.asset('assets/images/home.png',height: 30,),
      label: 'Home',
    ),
    NavigationDestination(
      icon: Image.asset('assets/images/information-button.png',height: 30,),
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
            )
          ],
        ),
      ),
    );
  }
}