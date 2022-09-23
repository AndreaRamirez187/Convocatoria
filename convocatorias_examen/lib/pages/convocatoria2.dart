import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pdf.dart';

class Convocatoria2 extends StatefulWidget {
  const Convocatoria2({Key? key}) : super(key: key);

  @override
  State<Convocatoria2> createState() => _Convocatoria2State();
}

class _Convocatoria2State extends State<Convocatoria2> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => leerJson(context));
  }

  List convocatorias = [];

  Future<void> leerJson(BuildContext context) async {
    final String datosLeidos =
        await rootBundle.loadString('assets/convocatorias.json');
    final datosDecodificados = await json.decode(datosLeidos);
    setState(() {
      convocatorias = datosDecodificados["convocatorias"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff485378),
      body: Stack(children: <Widget>[
        ListView.builder(
          itemBuilder: listaConvocatorias,
          itemCount: convocatorias.length,
        ),
      ]),
    );
  }

  Widget listaConvocatorias(BuildContext context, int index) {
    //Miniatura convocatoria
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff1b396a),
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15)),
      width: 700,
      height: 425,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(5),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        // Titulo de la convocatoria
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            convocatorias[index]['titulo'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        // Descripcion de la convocatoria
        Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            convocatorias[index]['descripcion'],
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        //Imagen de convocatoria
        Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset('assets/img/Convocatoria01.png', ),
        ),
        
        //Boton para abrir PDF de la convocatoria
        Expanded(
          child: Container(
              color: const Color(0xff1b396a),
              child: Align(
                //Alinearlo abajo a la derecha
                alignment: const Alignment(0.95, 0.9),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(9)),
                    onPressed: () {
                      String linkPDF = convocatorias[index]['pdf'];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PDF(linkPDF)));
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 25,
                    )),
              )),
        )
      ]),
    );
  }
}
