  import 'package:flutter/material.dart';

Container imagenfondo(Size screenSize) {
    return Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/fondo3.png'),
              fit: BoxFit.cover,
            ),
          ),
        );
  }