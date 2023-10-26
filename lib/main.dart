import 'package:calculadora_imc_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorDark: const Color(0xff070908),
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color.fromARGB(255, 54, 118, 122),
            onPrimary: Color(0xffF0F4F2),
            background: Color(0xff070908),
            onBackground: Color(0xffF0F4F2),
            error: Colors.red,
            secondary: Color(0xff677A89),
            onSecondary: Color(0xffF0F4F2),
            onError: Color(0xffF0F4F2),
            surface:  Color(0xff739694),
            onSurface: Color(0xffF0F4F2)),
      ),
      home: const HomePage(),
    );
  }
}
