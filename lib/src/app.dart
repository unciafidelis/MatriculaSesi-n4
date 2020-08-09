import 'package:flutter/Material.dart';
import 'package:androidapp_sesion4_tmc/src/pantalla.dart';
import 'package:flutter/cupertino.dart';

class App extends StatelessWidget {
  App({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Sesión 4 Aplicación en Android',
        home: Scaffold(
            appBar: new AppBar(
              title: new Text(title),
            ),
            body: Pantalla()));
  }
}
