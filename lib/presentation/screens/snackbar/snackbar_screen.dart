import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context){

    //borrar los snackbars que estén abiertos antes de mostrar mas
    ScaffoldMessenger.of(context).clearSnackBars(); 

    //creamos un snackbar con un texto, un botón y una duracion de 2 segundos
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: (){}),
      duration: const Duration(seconds: 2),
      );

    //Mostramos el snackbar, los snackbars se tienen que crear dentro de un scaffold, con este metodo le decimos que muestre el snackbar en el scaffold mas cercano.
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }


  void openDialog(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text('Aliqua est duis deserunt nulla fugiat esse do dolor ad incididunt voluptate qui esse. Ipsum ipsum mollit eiusmod reprehenderit cupidatat. Elit dolor dolor aute elit dolor officia est deserunt quis est consectetur Lorem consectetur.'),
        actions: [

          TextButton(onPressed: () {
            context.pop();
          }, child: const Text('Cancelar')),

          FilledButton(onPressed: () {
            context.pop();
          }, child: const Text('Aceptar')),

        ],
      ),
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and Dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  const Text('Hola que tal estas yo estoy bien esto es una aplicacion de flutter si te gusta bien y si no tambien, ya no se me ocurre que mas escribir asique voy a parar de escribir en un momento, creo que ya, ya , ahora , si.')
                ] 
                );
            }, child: const Text('Licencias usadas')),
            FilledButton.tonal(onPressed: (){ openDialog(context); }, child: const Text('Mostrar diálogo'))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackBar(context);
        },
      ),
    );
  }
}