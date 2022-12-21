import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 50000000);

  Empresa _google = new Empresa("Google", "Larry Page", 30000000);

  @override
  void initState() {
    super.initState();

    print(_facebook.nombre);
    print(_facebook.propietario);
    print(_facebook.ingresoAnual);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Center(
        child: Text(_facebook.nombre),
      ),
    );
  }
}

class Empresa {
  late String nombre;
  late String propietario;
  late int ingresoAnual;

  Empresa(String nombre, String propietario, int ingreso) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}
