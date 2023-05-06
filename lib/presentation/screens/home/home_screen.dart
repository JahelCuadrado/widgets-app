
import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {

  final MenuItem menuItem;

  const _CustomListTile({
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; 

    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      onTap: () {

      //   Navigator.of(context).push( //con push ponemos esta nueva pantalla encima, con replace la replazariamos
      //     MaterialPageRoute(
      //       builder: (context) => const ButtonsScreen(),
      //   ),
      //  );

      Navigator.pushNamed(context, menuItem.link);

       
      },
    );
  }
}