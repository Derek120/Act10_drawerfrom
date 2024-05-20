import 'package:flutter/material.dart';
import 'package:galindo0494/Articulos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Producto Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArticuloPage(),
    );
  }
}

class ArticuloPage extends StatefulWidget {
  const ArticuloPage({Key? key}) : super(key: key);

  @override
  State<ArticuloPage> createState() => _ArticuloPageState();
}

class _ArticuloPageState extends State<ArticuloPage> {
  var idarticuloText = TextEditingController();
  var nombreText = TextEditingController();
  var descripcionText = TextEditingController();
  var precioText = TextEditingController();
  var cantidadText = TextEditingController();
  var marcaText = TextEditingController();
  var calidadText = TextEditingController();
  var materialText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Registro del Articulo",
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
              controller: idarticuloText,
              decoration: InputDecoration(
                labelText: 'idproducto',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            TextFormField(
              controller: nombreText,
              decoration: InputDecoration(
                labelText: 'Nombre',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: descripcionText,
              decoration: InputDecoration(
                labelText: 'Descripcion',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: precioText,
              decoration: InputDecoration(
                labelText: 'Precio',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: cantidadText,
              decoration: InputDecoration(
                labelText: 'Cantidad',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: marcaText,
              decoration: InputDecoration(
                labelText: 'Marca',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: calidadText,
              decoration: InputDecoration(
                labelText: 'Calidad',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: materialText,
              decoration: InputDecoration(
                labelText: 'Material',
                labelStyle: TextStyle(color: Color(0xff000000)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String idarticulo = idarticuloText.text;
                String nombre = nombreText.text;
                String descripcion = descripcionText.text;
                String precio = precioText.text;
                String cantidad = cantidadText.text;
                String marca = marcaText.text;
                String calidad = calidadText.text;
                String material = materialText.text;

                Navigator.pop(context);
              },
              child: Text('Registrar Articulos',
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
