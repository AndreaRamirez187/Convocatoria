import 'package:examen_prueba01/pages/convocatoria2.dart';
import 'package:flutter/material.dart';
import '/pages/sidebar.dart';

class Convocatorias extends StatefulWidget {
  const Convocatorias({Key? key}) : super(key: key);

  @override
  State<Convocatorias> createState() => _ConvocatoriasState();
}

class _ConvocatoriasState extends State<Convocatorias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convocatorias'),
        backgroundColor: const Color(0xff1b396a),
      ),
      drawer: const Drawer(
        backgroundColor: Color(0xff1b396a),
        child: SideBar(),
      ),
      backgroundColor: const Color.fromARGB(255, 165, 169, 179),
      body: const Center(
        child: Convocatoria2(),
      ),
    );
  }
}
