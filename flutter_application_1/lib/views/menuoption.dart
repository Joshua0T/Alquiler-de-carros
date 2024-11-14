import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Inicio.dart';
import 'package:flutter_application_1/views/Registro.dart';

class Menuoption extends StatefulWidget {
  const Menuoption({super.key});

  @override
  State<Menuoption> createState() => _MenuoptionState();
}

class _MenuoptionState extends State<Menuoption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          foregroundColor: Colors.white,
          title: Text('menu de opciones'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 16,
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2dHUK79Cgx4GoZtNn0u8wXxgjgijqkRVQiA&s',
              height: 280,
              width: 280,
            ),
            
            Card(
              child: ListTile(
                title: Text('Inicio de Sesion'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>Inicio()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Registro'),
                leading: Icon(Icons.account_circle_sharp),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>Registro()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Login'),
                leading: Icon(Icons.add_card_outlined),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {},
              ),
            ),
          ],
        )
        ); 
  }
}