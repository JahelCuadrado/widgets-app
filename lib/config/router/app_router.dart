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
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

  ],


);