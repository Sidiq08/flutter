import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Font Feature"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Contoh 01 (Tanpa apapun)"),
              Text("Contoh 01 (Small Caps)",
                  style: GoogleFonts.milonga(
                      fontFeatures: [FontFeature.enable('smcp')])),
              Text("Contoh 1/2 (Small Caps)",
                  style: GoogleFonts.milonga(fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ])),
              Text("Contoh Cardo 19(Tanpa apapun)", style: GoogleFonts.cardo()),
              Text("Contoh Cardo 19(Old Style)",
                  style: GoogleFonts.cardo(
                      fontFeatures: [FontFeature.oldstyleFigures()])),
              Text("Contoh Cardo 19(Tanpa apapun)",
                  style: GoogleFonts.gabriela()),
              Text("Contoh Gabriela 5(stylisticSet)",
                  style: GoogleFonts.gabriela(
                      fontSize: 20,
                      fontFeatures: [FontFeature.stylisticSet(5)])),
            ],
          ),
        ),
      ),
    );
  }
}
