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
  final int selectedColor;
  final bool isDarkMode;

  //constructor
  AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = false
    }) : assert(selectedColor >= 0, 'selectedColor debe ser mayor o igual a 0'),
         assert(selectedColor < colors.length, 'selectedColor debe ser menor de ${colors.length}');

  //Metodo get
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colors[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
    );


  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode
  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode
  );
  
}