import 'package:calificacion/Pages/reservar.dart'; 
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image/fondo2.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Colors.black.withOpacity(0.5),
              child: Text(
                'LITERATURA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 159, 234),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 150),
                Center(
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      _buildCategoryContainer(context,
                          title: 'LA VACA',
                          imagePath: 'assets/image/Cuento.jpg',
                          description:
                              'La Vaca es una obra clásica de la literatura infantil.'),
                      _buildCategoryContainer(context,
                          title: 'CASA DE LOS ESPIRITUS',
                          imagePath: 'assets/image/Novela.jpg',
                          description:
                              'La Casa de los Espíritus es una novela escrita por Isabel Allende.'),
                      _buildCategoryContainer(context,
                          title: 'EL GALLO CARMELO',
                          imagePath: 'assets/image/Comics.jpg',
                          description:
                              'El Gallo Carmelo es un popular cómic de humor.'),
                      _buildCategoryContainer(context,
                          title: 'LA ODISEA',
                          imagePath: 'assets/image/Cuento.jpg',
                          description:
                              'La Odisea es una epopeya griega atribuida a Homero.'),
                      _buildCategoryContainer(context,
                          title: 'HERALDOS NEGROS',
                          imagePath: 'assets/image/Novela.jpg',
                          description:
                              'Heraldos Negros es una novela del escritor peruano César Vallejo.'),
                      _buildCategoryContainer(context,
                          title: 'LA CASA DE LOS PERROS',
                          imagePath: 'assets/image/Comics.jpg',
                          description:
                              'La Casa de los Perros es un cómic de aventuras caninas.'),
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

  Widget _buildCategoryContainer(
    BuildContext context, {
    required String title,
    required String imagePath,
    required String description,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Reservar()),
        );
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Descripción',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
