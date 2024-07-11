import 'package:flutter/material.dart';

class AgendaPreviaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Previa'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red.shade100, Colors.green.shade100],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildListItem("1.- INAGURACION DEL CAMPEONATO DE FUTBOL DE SALON SABADO 2 DE MARZO 2024\n"
                    "EN LAS SIGUIENTES CATEGORIAS: HONORES, MORENOS, SENIORS Y DAMAS"),
                buildListItem("2.- PRESENTACION OFICIAL DE ACTIVIDADES FOLKLORICAS FESTIVAS EN HONOR A LA “VIRGEN DEL CARMEN” SABADO 9 DE MARZO 2024"),
                buildListItem("3.- ELECCION DE NUESTRA SOBERANA FOLKLORICA (REYNA) 2024 VIERNES 24 DE MAYO"),
                buildListItem("4.- ENTRADA AUTOCTONA VIERNES 21 DE JUNIO 2024"),
                buildListItem("5.- CUADRAGESIMO ANIVERSARIO (40 AÑOS) ASOCIACION DE CONJUNTOS FOLKLORICOS 16 DE JULIO “VIRGEN DEL CARMEN” Y BENDICION DE ESTANDARTES FOLKLORICOS SABADO 29 DE JUNIO"),
                buildListItem("6.- PRIMER ENCUENTRO DE BANDAS PRINCIPALES DEL DEPARTAMENTO DE LA PAZ SERENATA A LA VIRGEN DEL CARMEN"),
                buildListItem("7.- PRE ENTRADA FOLKLORICA GESTION 2024 SABADO 6 DE JULIO"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: AgendaPreviaScreen()));