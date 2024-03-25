import 'package:flutter/material.dart';

Container imagen1() {
  return Container(
    width: 200,
    height: 200,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(80),
      child: Image.asset(
        'assets/image/IMA_1.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}
