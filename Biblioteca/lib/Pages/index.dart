import 'package:calificacion/Pages/login.dart';
import 'package:calificacion/components/boton_ingresar.dart';
import 'package:calificacion/components/imagen1.dart';
import 'package:calificacion/components/imagenfondo.dart';
import 'package:calificacion/components/labe_textbox.dart';
import 'package:calificacion/components/titulo.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          imagenfondo(screenSize),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Titulo1(),
                SizedBox(height: 40),
                imagen1(),
                SizedBox(height: 20),
                label_textbox(),
                SizedBox(height: 20),
                // Botón "Ingresar"
                boton_ingresar(context),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Text(
                          'Registrarme',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 6, 62, 247),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
