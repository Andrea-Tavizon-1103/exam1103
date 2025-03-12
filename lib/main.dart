import 'package:flutter/material.dart';

void main() {
  runApp(MisClientes());
}

class Cliente {
  final int idCliente;
  final String nombre;
  final String apellido;
  final String correo;

  Cliente({
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.correo,
  });
}

class MisClientes extends StatelessWidget {
  final List<Cliente> clientes = [
    Cliente(idCliente: 1, nombre: "Juan", apellido: "Pérez", correo: "juan@example.com"),
    Cliente(idCliente: 2, nombre: "María", apellido: "Gómez", correo: "maria@example.com"),
    Cliente(idCliente: 3, nombre: "Carlos", apellido: "López", correo: "carlos@example.com"),
    Cliente(idCliente: 4, nombre: "Ana", apellido: "Martínez", correo: "ana@example.com"),
    Cliente(idCliente: 5, nombre: "Luis", apellido: "Fernández", correo: "luis@example.com"),
  ];

  final List<Color> cardColors = [
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.orange.shade100,
    Colors.red.shade100,
    Colors.purple.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Andrea Tavizon Mat: 22308051281103'),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Color.fromARGB(255, 241, 157, 154),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(clientes.length, (index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: cardColors[index],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListTile(
                          title: Text(clientes[index].nombre + " " + clientes[index].apellido,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("ID: ${clientes[index].idCliente}\nCorreo: ${clientes[index].correo}"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
