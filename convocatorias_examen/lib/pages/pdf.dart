import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// ignore: must_be_immutable
class PDF extends StatefulWidget {
  String linkPdf;
  // ignore: use_key_in_widget_constructors
  PDF(this.linkPdf);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1b396a),
        title: const Text('Convocatoria 1'),
      ),
      body: SfPdfViewer.network(
        widget.linkPdf,
      ),
    );
  }
}
