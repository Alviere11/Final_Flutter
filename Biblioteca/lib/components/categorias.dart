import 'package:calificacion/Pages/home.dart';
import 'package:flutter/material.dart';

Center categorias_libros(BuildContext context) {
  return Center(
    child: GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        _buildCategoryContainer('LITERATURA', 'assets/image/Lite.jpg',
            context), 
        _buildCategoryContainer('CUENTO', 'assets/image/Cuento.jpg', context),
        _buildCategoryContainer('NOVELA', 'assets/image/Novela.jpg', context),
        _buildCategoryContainer('COMICS', 'assets/image/Comics.jpg', context),
        _buildCategoryContainer('Ciencia', 'assets/image/Cuento.jpg', context),
        _buildCategoryContainer(
            'Matematicas', 'assets/image/Novela.jpg', context),
      ],
    ),
  );
}

Widget _buildCategoryContainer(
    String title, String imagePath, BuildContext context) {
  return GestureDetector(
    onTap: () {
      // Acción al presionar una categoría
      if (title == 'LITERATURA') {
        Navigator.push(
          // Navega a la pantalla de inicio (Home)
          context,
          MaterialPageRoute(
            builder: (context) => Home(), // Usando el widget de Home
          ),
        );
      }
    },
    child: Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
