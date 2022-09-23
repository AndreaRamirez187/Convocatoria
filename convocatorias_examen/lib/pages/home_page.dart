import '/pages/sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ITE'),
        backgroundColor: const Color(0xff1b396a),
      ),
      drawer: const Drawer(
        backgroundColor: Color(0xff1b396a),
        child: SideBar(),
      ),
      body: Container(
        color: const Color.fromARGB(1, 72, 83, 120),
        child: Expanded(
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset('assets/img/logo.png', ),
            Image.asset('assets/img/servicios.jpg', ),


          ],

          ),
        )
      ),
    );
  }
}
