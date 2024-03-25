import 'package:calificacion/Pages/home.dart';
import 'package:calificacion/Pages/index.dart';
import 'package:calificacion/Pages/login.dart';
import 'package:calificacion/Pages/registro.dart';
import 'package:calificacion/Pages/reservado.dart';
import 'package:calificacion/Pages/reservar.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> rutas = {
  'Index': (context) => const Index(),
  'Login': (context) => const Login(),
  'Registro': (context) => const Registro(),
  'Home': (context) => const Home(),
  'Reservar': (context) => const Reservar(),
  'Reservado': (context) => const Reservado(),
};
