import 'package:flutter/material.dart';
import 'package:molina0967/pantallas0967/panel0967/panel_pantalla0967.dart';

void main() => runApp(MiAppSweetQueen0967());

class MiAppSweetQueen0967 extends StatelessWidget {
  const MiAppSweetQueen0967({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sweet Queen Molina 0967",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff580707)),
          useMaterial3: true),
      home: const PanelPantalla0967(),
    );
  }
}
