import 'package:flutter/material.dart';
import 'package:wattsapp1/screen1.dart';

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
      // title: 'Whatsapppp',
      // theme: ThemeData(
      //   primaryColor: Color(0xff075e54),
      // ),
      //home: Screen1(title:'WhatsApp'),
      initialRoute: Screen1.id,
      routes: {
        Screen1.id:(context) => Screen1(),
      },
    );
  }
}
