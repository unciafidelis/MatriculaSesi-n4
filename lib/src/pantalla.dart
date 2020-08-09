import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Pantalla extends StatefulWidget {
  @override
  _PantallaState createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {
  final formKey = GlobalKey<FormState>();
  String _nombre = '', _matricula = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              nombre(),
              matricula(),
              separador(),
              saludo(),
              separador(),
              datos()
            ],
          )),
    );
  }

  Widget nombre() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Nombre', hintText: 'Escribe tu nombre completo'),
        validator: (value) {
          if (value.isEmpty) {
            _nombre = null;
            return "No has escrito ningún nombre";
          } else {
            _nombre = value;
            return null;
          }
        });
  }

  Widget matricula() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Matrícula',
            hintText: 'Escribe tu matrícula o Número de Control'),
        validator: (value) {
          if (value.isEmpty) {
            _matricula = null;
            return "No has escrito ninguna matrícula";
          } else {
            _matricula = value;
            return null;
          }
        });
  }

  saludo() {
    return RaisedButton(
        child: Text('Saludar'),
        onPressed: () {
          formKey.currentState.validate();
          if (_nombre.isNotEmpty && _matricula.isNotEmpty) {
            _mensaje();
          }
        });
  }

  Widget separador() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
    );
  }

  Widget datos() {
    return Text('Alumno: Jorge alejandro Morgan Benita con Matrícula 00054728');
  }

  void _mensaje() {
    showDialog(
        context: context,
        builder: (buildcontext) {
          return AlertDialog(
            title: Text('Saludos! Mucho gusto!!'),
            content: Text(
                "Esta es una pequeña aplicación realizada en Flutter para Android, Recibe de nuevo un cordial saludo $_nombre con Matrícula $_matricula"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Cerrar"),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  formKey.currentState.reset();
                  setState(() {});
                },
              ),
            ],
          );
        });
  }
}
