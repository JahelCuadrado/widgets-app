import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';



// GoRouter configuration
//TODO navegar entre pantallas con go_router 2: creamos este archivo de rutas con las rutas
final appRouter = GoRouter(
  initialLocation: '/',  //Ruta por defecto que se muestra
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,   //TODO navegar entre pantallas con go_router 6.2: Para poder utilizarlas en nuestro
      pageBuilder: (context, state) => const CupertinoPage(child: HomeScreen()),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: ButtonsScreen()),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: CardsScreen()),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: ProgressScreen()),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackBarScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: SnackBarScreen()),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: AnimatedScreen()),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: UiControlsScreen()),
    ),

    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: AppTutorialScreen()),
    ),

  ],


);