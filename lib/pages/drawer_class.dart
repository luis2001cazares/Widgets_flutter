import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
              // Agrega aquí la lógica para navegar a la página de inicio.
              Navigator.of(context).pop(); // Cierra el Drawer.
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuración'),
            onTap: () {
              // Agrega aquí la lógica para navegar a la página de configuración.
              Navigator.of(context).pop(); // Cierra el Drawer.
            },
          ),
          // Agrega más elementos del Drawer según sea necesario.
        ],
      ),
    );
  }
}
