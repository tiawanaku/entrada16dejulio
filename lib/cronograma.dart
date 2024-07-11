import 'dart:math';

import 'package:flutter/material.dart';

class CronogramaScreen extends StatefulWidget {
  @override
  _CronogramaScreenState createState() => _CronogramaScreenState();
}

class _CronogramaScreenState extends State<CronogramaScreen> {
  // Lista de horarios con danzas y fraternidades
  List<Map<String, String>> schedule = [
 {"Horario": "7:00", "Danza": "POTOLOS", "Fraternidad": "CHASKOSOS Y PASPOSAS"},
    {"Horario": "7:10", "Danza": "SICURIS", "Fraternidad": "ORIGINARIOS JANQU QALA DE COMUNIDAD PAMAPAJASI"},
    {"Horario": "7:20", "Danza": "PICO VERDES", "Fraternidad": "CENTRO CULTURAL WITITIS"},
    {"Horario": "7:30", "Danza": "MORENADA", "Fraternidad": "UNION TALLERES"},
    {"Horario": "7:40", "Danza": "MUCULULU", "Fraternidad": "CONJUNTO SICURI"},
    {"Horario": "7:50", "Danza": "CULLAGUADA", "Fraternidad": "VERDADEROS INSEPARABLES ANGELES DE PONCHOS BLANCOS"},
    {"Horario": "8:00", "Danza": "KANTUS", "Fraternidad": "AGRUPACION FOLKLORICA CULTURAL YURI PACHA"},
    {"Horario": "8:10", "Danza": "MORENADA", "Fraternidad": "COMERCIAL 16 DE JULIO"},
    {"Horario": "8:20", "Danza": "TINKU", "Fraternidad": "CENTRO ARTISTICO FOLKLORICO UKAMAU BOLIVIA"},
    {"Horario": "8:30", "Danza": "JALQ’AS", "Fraternidad": "GALLARDA JUVENIL PRINCIPES WINAY RUNAS"},
    {"Horario": "8:40", "Danza": "POTOLOS", "Fraternidad": "GENUINOS PRINCIPES WIÑAY Y RUNAS"},
    {"Horario": "8:50", "Danza": "MORENADA", "Fraternidad": "PODEROSA MORENADA COMERCIAL LOS VOLANTES"},
    {"Horario": "9:00", "Danza": "SICURI", "Fraternidad": "COMUNIDAD AUTOCTONA KOLLA AYMARA"},
    {"Horario": "9:10", "Danza": "CAPORALES", "Fraternidad": "JOSE BALLIVIAN"},
    {"Horario": "9:20", "Danza": "MORENADA", "Fraternidad": "UNION CENTRAL LIDERES VACUNOS DE LA 16 DE JULIO"},
    {"Horario": "9:30", "Danza": "SAYA", "Fraternidad": "NEGRITOS COL. SAN SIMON DE AYACUCHO – EL ALTO"},
    {"Horario": "9:40", "Danza": "AUKI AUKI", "Fraternidad": "BARBAS BLANCAS DE PUERTO ACOSTA"},
    {"Horario": "9:50", "Danza": "MOREANDA", "Fraternidad": "LIBERACION FANATICOS"},
    {"Horario": "10:00", "Danza": "CULLAGUADA", "Fraternidad": "MARAVILLA SENSACION 94"},
    {"Horario": "10:10", "Danza": "SICURIS", "Fraternidad": "DE ITALAQUE TAYPI QAMASA PROV.CAMACHO"},
    {"Horario": "10:20", "Danza": "MORENADA", "Fraternidad": "TRANSPORTE 16 DE JULIO TRUFI 7"},
    {"Horario": "10:30", "Danza": "WAKA WAKA", "Fraternidad": "DAMAS 14 DE SEPTIEMBRE"},
    {"Horario": "10:40", "Danza": "MORENADA", "Fraternidad": "FRATERNIDAD CHASQUIS"},
    {"Horario": "10:50", "Danza": "MINERITOS", "Fraternidad": "C.C. DIGNOS CAMINANTES MINERITOS DE BOLIVIA"},
    {"Horario": "11:00", "Danza": "MORENADA", "Fraternidad": "SEÑORIAL DE MORENOS CHACALTAYA 97.16"},
    {"Horario": "11:10", "Danza": "MOSEÑADA", "Fraternidad": "COMUNIDAD TAMBO CUSI PROV.LARACAJA"},
    {"Horario": "11:20", "Danza": "TOBAS", "Fraternidad": "CENTRO CULTURAL ABEL ITURRALDE"},
    {"Horario": "11:30", "Danza": "MOSEÑADA", "Fraternidad": "INTERNACIONAL CABALLEROS INTOCABLES"},
    {"Horario": "11:40", "Danza": "TINKUS", "Fraternidad": "CENTRO CULTURAL TINKUS TAITAS"},
    {"Horario": "11:50", "Danza": "MOSEÑADA", "Fraternidad": "VOCES ANDINOS"},
    {"Horario": "12:00", "Danza": "TOBAS", "Fraternidad": "NUEVA RAIZ"},
    {"Horario": "12:10", "Danza": "INCA", "Fraternidad": "NUEVA AGR.UNION CAMINANTES INCAS"},
    {"Horario": "12:20", "Danza": "MORENADA", "Fraternidad": "NEVADOS DEL WAYNA POTOSI"},
    {"Horario": "12:30", "Danza": "KANTUS", "Fraternidad": "COMUNIDAD 21 DE JUNIO"},
    {"Horario": "12:40", "Danza": "CHACARERA", "Fraternidad": "NOSTALGIAS CHAQUEÑAS"},
    {"Horario": "12:50", "Danza": "PUJLLAY", "Fraternidad": "TALLER ARQUICULTURAL"},
    {"Horario": "13:00", "Danza": "MOSEÑADA", "Fraternidad": "INTERNACIONAL REAL INTOCABLES"},
    {"Horario": "13:10", "Danza": "MORENADA", "Fraternidad": "PODEROSA MORENADA LOS ANDES"},
    {"Horario": "13:20", "Danza": "CAPORALES", "Fraternidad": "KURI CHUYMA"},
    {"Horario": "13:30", "Danza": "PUJLLAY", "Fraternidad": "FRATERNIDAD WIÑAY WARAS"},
    {"Horario": "13:40", "Danza": "TINKUS", "Fraternidad": "FRATERNIDAD ÑAWPA TOLQ’AS HUACHACALLA"},
    {"Horario": "13:50", "Danza": "MORENADA", "Fraternidad": "SEÑORIAL 100 X 100 BOLIVIA"},
    {"Horario": "14:00", "Danza": "LLAMERADA", "Fraternidad": "FRATERNIDAD 100 X 100 VIRGEN DEL CARMEN"},
    {"Horario": "14:10", "Danza": "WACATOCORIS", "Fraternidad": "FRAT. JUVENTUD WACA THOKORIS AYMARAS DE BOLIVIA"},
    {"Horario": "14:20", "Danza": "MOSEÑADA", "Fraternidad": "MARKAS LAYRU REAL INTOCABLES"},
    {"Horario": "14:30", "Danza": "TINKUS", "Fraternidad": "TINKUY TINKUY"},
    {"Horario": "14:40", "Danza": "SALAY", "Fraternidad": "BOLIVIA EL ALTO"},
    {"Horario": "14:50", "Danza": "CHACARERA", "Fraternidad": "SOL CHAQUEÑO SAN SIMON LA PAZ"},
    {"Horario": "15:00", "Danza": "SALAY", "Fraternidad": "COCHABAMABA FILIAL LA PAZ"},
    {"Horario": "15:10", "Danza": "TARQUEADA", "Fraternidad": "REVELACION PORVENIR"},
    {"Horario": "15:20", "Danza": "SALAY", "Fraternidad": "PASION BOLIVIA USA FILIAL LA PAZ"},
    {"Horario": "15:30", "Danza": "TARQUEADA", "Fraternidad": "UNION ALIANZA SAN MIGUEL ORURO"},
    {"Horario": "15:40", "Danza": "SALAY", "Fraternidad": "CON SENTIMIENTO"},
    {"Horario": "15:50", "Danza": "SICURI", "Fraternidad": "CENTRO CULTURAL HUAYCUMARKA"},
    {"Horario": "16:00", "Danza": "SAYA", "Fraternidad": "INSPIRACION CENTRAL"},
    {"Horario": "16:10", "Danza": "CAPORALES", "Fraternidad": "FRAT. CUL. FOLKLORICO CAPORALES EL ALTO INTEGRACION"},
    {"Horario": "16:20", "Danza": "WACA WACAS", "Fraternidad": "FRAT. REY DE REYES WACAS DE ORO"},
    {"Horario": "16:30", "Danza": "CAPORALES", "Fraternidad": "CHUYMAMPI"},
    {"Horario": "16:40", "Danza": "TARQUEADA", "Fraternidad": "UNION ALIANZA SAN MIGUEL"},
    {"Horario": "16:50", "Danza": "TINKU", "Fraternidad": "SUNQU SUWASX100 PRE"},
    {"Horario": "17:00", "Danza": "TOBAS", "Fraternidad": "ZONA NORTE FILIAL EL ALTO"},
    {"Horario": "17:10", "Danza": "MOSEÑADA", "Fraternidad": "INTERNACIONAL UNION VALLE LA PAZ"},
    {"Horario": "17:20", "Danza": "CHICHEÑOS", "Fraternidad": "FRATERNIDAD VIDITAY"},
    {"Horario": "17:30", "Danza": "MOSEÑADA", "Fraternidad": "SOL NACIENTE"}
  ];

  // Generador de colores aleatorios suaves
  Color getRandomColor() {
    Random random = Random();
    int r = 100 + random.nextInt(156); // Rango para el canal rojo (100-255)
    int g = 100 + random.nextInt(156); // Rango para el canal verde (100-255)
    int b = 100 + random.nextInt(156); // Rango para el canal azul (100-255)
    return Color.fromARGB(255, r, g, b); // Devuelve el color con opacidad máxima (255)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cronograma'),
      ),
      body: ListView.builder(
        itemCount: schedule.length,
        itemBuilder: (context, index) {
          final horario = schedule[index]['Horario'];
          final danza = schedule[index]['Danza'];
          final fraternidad = schedule[index]['Fraternidad'];

          // Color aleatorio suave para el fondo
          Color colorFondo = getRandomColor();

          return Card(
            color: colorFondo,
            child: ListTile(
              title: Text('$horario - $danza'),
              subtitle: Text(fraternidad?.toString() ?? ''),
            ),
          );
        },
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: CronogramaScreen()));