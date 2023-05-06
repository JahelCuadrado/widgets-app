import 'package:flutter/material.dart';

//Variables
const Color customColor = Color.fromARGB(255, 51, 255, 0);

const List<Color> colors = [
  customColor,
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.cyan,
  Colors.green,
  Colors.lime,
  Colors.orange,
  Colors.brown,
  Colors.purple,
  Colors.pink
];


//Clase
class AppTheme{

  //propiedades
  final int seletedColor;

  //constructor
  AppTheme({
    this.seletedColor = 0
    }) : assert(seletedColor >= 0, 'selectedColor debe ser mayor o igual a 0'),
         assert(seletedColor < colors.length, 'selectedColor debe ser menor de ${colors.length}');

  //Metodo get
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colors[seletedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
    );
  
}