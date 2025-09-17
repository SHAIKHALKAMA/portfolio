import 'package:DeveloperFolio/pages/layoutpage.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'configure/navigation_service.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  setupLocator();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MyApp({Key? key, this.savedThemeMode}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
     light: ThemeData(
       scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
  ).copyWith(secondary: Colors.amber),
),

dark: ThemeData(
   scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.grey,
    brightness: Brightness.dark,
  ).copyWith(
    secondary: Colors.amber,
    surface: Colors.black,
  ),
),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shaikhalkamaPortfolio',
        theme: theme,
        darkTheme: darkTheme,
        home: LayoutTemplate(),
      ),
    );
  }
}
