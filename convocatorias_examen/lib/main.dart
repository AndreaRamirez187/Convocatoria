import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instituto Tecnologico de Ensenada',
      theme: ThemeData(
        primaryColor: const Color(0xff1b396a),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
