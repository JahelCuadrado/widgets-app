import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';
import 'package:widgets_app/presentation/screens/theme_changer/theme_changer_screen.dart';



// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',  //Ruta por defecto que se muestra
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,   
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
      path: '/counter_screen',
      name: CounterScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: CounterScreen()),
    ),

    GoRoute(
      path: '/theme_changer_screen',
      name: ThemeChangerScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: ThemeChangerScreen()),
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

    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      pageBuilder: (context, state) => const CupertinoPage(child: InfiniteScrollScreen()),
    ),


  ],


);