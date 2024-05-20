import 'package:galindo0494/Empleado.dart';
import 'package:flutter/material.dart';
import 'package:galindo0494/Articulos.dart'; // Importamos Cliente.dart
import 'Ventas.dart';
import 'package:galindo0494/Cliente.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Innova Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(), // Cambiamos MyHomePage por ClientePage
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  var _numberForm = GlobalKey<FormState>();
  RegExp _digitRegex = RegExp("[0-9]+");
  bool isValidForm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        title: Text(
          "Bienvenido",
          style: TextStyle(color: Color(0xffdedede)),
        ),
        iconTheme: IconThemeData(
            color: Colors.white), // Cambiar el color de los iconos al blanco
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://raw.githubusercontent.com/Derek120/img_IOS/b301e7e74f134215832a30cb00c8b10b901f1f70/flutterflowA12/m6.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 36,
                    left: 16,
                    child: Text(
                      'Muebleria',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Text(
                      'a.20308051280494@cbtis128.edu.mx',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://raw.githubusercontent.com/Derek120/img_IOS/main/don%20pepe.jpg')),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Tabla Cliente'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientePage()),
                );
              },
            ),
            ListTile(
              title: Text('Tabla Articulo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArticuloPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tabla Empleado'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmpleadoPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tabla Venta'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VentasPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailText,
                decoration: InputDecoration(
                  hintText: "Ingrese Email Aquí..",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.white,
                          width: 2)), // Cambié el color a blanco
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                ),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: passText,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Ingrese la contraseña aquí..",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                            BorderSide(color: Colors.deepOrange, width: 2))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                    onPressed: () {
                      // Redirigir a Cliente.dart al presionar el botón "Login
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Text("Login",
                        style: TextStyle(color: Color(0xffffffff)))),
              ),
              Form(
                key: _numberForm,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (inputValue) {
                        if (inputValue!.isEmpty ||
                            !_digitRegex.hasMatch(inputValue)) {
                          return "Ingrese el número";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      validator: (inputValue) {
                        if (inputValue!.isEmpty) {
                          return "Complete antes";
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_numberForm.currentState!.validate()) {
                          setState(() {
                            isValidForm = true;
                          });
                        } else {
                          setState(() {
                            isValidForm = false;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary:
                            Color(0xff000000), // Mismo color que el botón Login
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Cuadrado
                        ),
                        padding: EdgeInsets.only(
                            top: 15.0), // Espacio de 15px hacia abajo
                      ),
                      child: Text(
                        "Verificar Número",
                        style: TextStyle(
                          color: Colors
                              .white, // Mismo color que el texto del botón Login
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
