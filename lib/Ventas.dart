import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ventas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VentasPage(),
    );
  }
}

class VentasPage extends StatefulWidget {
  const VentasPage({Key? key}) : super(key: key);

  @override
  State<VentasPage> createState() => _VentasPageState();
}

class _VentasPageState extends State<VentasPage> {
  var idventaText = TextEditingController();
  var idclienteText = TextEditingController();
  var idempleadoText = TextEditingController();
  var fechaText = TextEditingController();
  var tipo_comproventaText = TextEditingController();
  var correlativoText = TextEditingController();
  var serieText = TextEditingController();
  var estadoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Registro de venta",
          style: TextStyle(color: Color(0xffffffff)),
        ),
        centerTitle: true, // Centra el título
        automaticallyImplyLeading: false, // Deshabilita la flecha de retroceso
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10.0),
            TextFormField(
              controller: idventaText,
              decoration: InputDecoration(
                labelText: 'idventa',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            TextFormField(
              controller: idclienteText,
              decoration: InputDecoration(
                labelText: 'cliente',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: idempleadoText,
              decoration: InputDecoration(
                labelText: '',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: fechaText,
              decoration: InputDecoration(
                labelText: 'fecha',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: tipo_comproventaText,
              decoration: InputDecoration(
                labelText: 'tipo_comproventa',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: serieText,
              decoration: InputDecoration(
                labelText: 'serie',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: correlativoText,
              decoration: InputDecoration(
                labelText: 'Correolativo',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: estadoText,
              decoration: InputDecoration(
                labelText: 'Estado',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String idventa = idventaText.text;
                String idcliente = idclienteText.text;
                String idempleado = idempleadoText.text;
                String fecha = fechaText.text;
                String tipo_comproventa = tipo_comproventaText.text;
                String serie = serieText.text;
                String correlativo = correlativoText.text;
                String estado = estadoText.text;

                Navigator.pop(context);
              },
              child: Text('Registrar venta',
                  style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
