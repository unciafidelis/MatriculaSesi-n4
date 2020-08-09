import 'package:flutter/material.dart';
import 'package:androidapp_sesion4_tmc/src/app.dart';

void main() {
  runApp(new MaterialApp(
    title: 'App Sesión 4 - TMC',
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: Colors.blue,
    ),
    home: App(title: 'App Sesión 4 - TMC'),
  ));
}
