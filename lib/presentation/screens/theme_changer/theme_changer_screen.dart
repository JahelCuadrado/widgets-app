import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static String name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        centerTitle: true,
        actions: [
            IconButton(onPressed: (){

            ref.read(themeNotifierProvider.notifier).toggleDarkMode();

          }, icon: Icon(
            isDarkMode ? Icons.light_mode_rounded
                       : Icons.dark_mode_rounded
            ))
        ],
      ),
      body: const _ThemeViewWidget(),
    );
  }
}

class _ThemeViewWidget extends ConsumerWidget {

  const _ThemeViewWidget();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    //int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
      return RadioListTile(
        title: Text('Este color', style: TextStyle(color: color),),
        subtitle: Text('${color.value}'),
        activeColor: color,
        value: index, 
        groupValue: selectedColor, 
        onChanged: (value) {
          //ref.read(selectedColorProvider.notifier).state = index;
          ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
        },
        );
    },);
  }
}