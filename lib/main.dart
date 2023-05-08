import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) { //TODO navegar entre pantallas con go_router 4: añadir al material app, el router y en el parametro routerconfig ponemos nuestro archivo de rutas. 
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(seletedColor: 2).getTheme(),
    );
  }
}


//TODO navegar entre pantallas con go_router 1: instalar el paquete go_router