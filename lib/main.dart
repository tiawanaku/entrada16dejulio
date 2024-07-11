import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importa el paquete services
import 'package:carousel_slider/carousel_slider.dart'; // Importa el paquete carousel_slider
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importa Font Awesome para los iconos de redes sociales
import 'package:url_launcher/url_launcher.dart'; // Importa url_launcher
import 'recorrido.dart';  // Importar el archivo recorrido.dart
import 'cronograma.dart';  // Importar el archivo cronograma.dart
import 'agendaprevia.dart';  // Importar el archivo agendaprevia.dart
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entrada16deJulio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> imageList = [
    'assets/a.jpg',
    'assets/b.jpg',
    'assets/c.jpg',
    'assets/d.jpg',
  ];

   Color _randomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido(a)'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            // Fondo con la imagen como marca de agua
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/escudo.png', // Ruta de la imagen de marca de agua
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red.shade200, Colors.green.shade200],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
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
                  leading: Icon(Icons.home, color: _randomColor()), // Color aleatorio
                  title: Text('INICIO'),
                  onTap: () {
                    Navigator.pop(context);
                    // Navegar a la pantalla de inicio
                  },
                ),
                ListTile(
                  leading: Icon(Icons.map, color: _randomColor()), // Color aleatorio
                  title: Text('RECORRIDO'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecorridoScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.event_note, color: _randomColor()), // Color aleatorio
                  title: Text('AGENDA PREVIA'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AgendaPreviaScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.schedule, color: _randomColor()), // Color aleatorio
                  title: Text('CRONOGRAMA'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CronogramaScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app, color: _randomColor()), // Color aleatorio
                  title: Text('SALIR'),
                  onTap: () {
                    Navigator.pop(context);
                    SystemNavigator.pop(); // Cerrar la aplicación
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Fondo con la imagen como marca de agua
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/1.jpg', // Asegúrate de que la ruta sea correcta según tu configuración en pubspec.yaml
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Column(
            children: [
              // Espacio para bajar la imagen un 10% de la altura de la pantalla
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              // Imagen de cabecera reducida en un 70%
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Image.asset(
                  'assets/cabecera.png', // Asegúrate de que la ruta sea correcta según tu configuración en pubspec.yaml
                  fit: BoxFit.contain,
                ),
              ),
              // Carrusel de imágenes
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 400.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: imageList.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              // Mensaje y logos de redes sociales en el pie de página
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Disfruta la majestuosa Entrada de la Virgen del Carmen en vivo a través de nuestras redes sociales. ¡No te lo pierdas!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.tiktok),
                          onPressed: () {
                            _launchURL('https://www.tiktok.com/@elaltocultura');
                          },
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.facebook),
                          onPressed: () {
                            _launchURL('https://www.facebook.com/ElAltoCulturas?mibextid=LQQJ4d');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
