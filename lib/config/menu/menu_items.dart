import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/screens.dart';


//TODO menu 1

class MenuItem{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon,
    });
}

const List<MenuItem> appMenuItems = [

    MenuItem(
      title: 'Counter con riverpod', 
      subTitle: 'Contador usando riverpod', 
      link: '/counter_screen', 
      icon: Icons.add,
      ),

    MenuItem(
      title: 'Botones', 
      subTitle: 'Varios botones en Flutter', 
      link: '/buttons', 
      icon: Icons.smart_button_outlined,
      ),

    MenuItem(
      title: 'Tarjetas', 
      subTitle: 'Un contenedor estilizado', 
      link: '/cards', 
      icon: Icons.credit_card,
      ),

    MenuItem(
      title: 'Progress Indicator', 
      subTitle: 'Generales y controlados', 
      link: '/progress', 
      icon: Icons.refresh_rounded,
      ),

    MenuItem(
      title: 'Snackbars y dialogos', 
      subTitle: 'Indicadores en pantalla', 
      link: '/snackbars', 
      icon: Icons.info_outline,
      ),

    MenuItem(
      title: 'Theme Changer', 
      subTitle: 'Cambiar tema de la app con riverpod', 
      link: '/theme_changer_screen', 
      icon: Icons.three_mp_rounded,
      ),
];