import 'package:calificacion/Pages/registro.dart';
import 'package:calificacion/routes/constants.dart';
import 'package:flutter/material.dart';

Padding boton_ingresar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Registro(),
          ),
        );
      },
      child: Text(
        'Ingresar',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: kfondo1,
      ),
    ),
  );
}
