import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: Center(child: Padding
    (padding: const EdgeInsets.all(16.0),
    child: Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),   
      ),
      child: Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          Icon(Icons.person,size: 80,color: Colors.redAccent,),
          SizedBox(height: 20,),
          Text(
            'Empecemos',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Crear una cuenta nueva',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Nombre completo',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Correo electronico',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Repetir Contraseña',
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            onPressed: (){}, 
            child: Text(
              'Registrarse',
              style: TextStyle(fontSize: 18),
            )
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('¿Ya tienes una cuenta?'),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Iniciar Sesion',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
        ],
      ),
    ),
    ),
    ),
    );
  }
}