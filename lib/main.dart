import 'package:flutter/material.dart';
import 'package:task_11_bmi/utils/colors.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Appcolor.primery,
            onPrimary: Appcolor.tertiary,
            secondary: Appcolor.secondry,
            onSecondary: Appcolor.tertiary,
            error: Colors.red,
            onError: Colors.red,
            background: Appcolor.backgroundBlue,
            onBackground: Appcolor.backgroundBlue,
            surface: Appcolor.backgroundBlue,
            onSurface: Appcolor.primery),
        // appBarTheme: const AppBarTheme(
        //   // color: Appcolor.backgroundBlue,
        //   surfaceTintColor: Colors.transparent,
        //   shadowColor: Appcolor.backgroundBlue,
        //   backgroundColor: Appcolor.backgroundBlue,
        // ),
      ),
      home: const BMIcalculator(),
    );
  }
}
