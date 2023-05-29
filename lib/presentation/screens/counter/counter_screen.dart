import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget { //TODO 3: riverpod

  static String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) { //TODO 4: riverpod

    final styleTitle = Theme.of(context).textTheme.titleLarge;
    final int clickCounter = ref.watch(counterProvider); //TODO 5: riverpod
    final bool isDarkMode  = ref.watch(isDarkModeProvider); //TODO 5: riverpod

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
          }, icon: Icon(
            isDarkMode ? Icons.light_mode_rounded
                       : Icons.dark_mode_rounded
            ))
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: styleTitle,), //TODO 6: riverpod
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        //ref.read(counterProvider.notifier).state++; //TODO 7: riverpod
        ref.read(counterProvider.notifier).update((state) => state + 1);

      }, child: const Icon(Icons.add),),
    );
  }
}