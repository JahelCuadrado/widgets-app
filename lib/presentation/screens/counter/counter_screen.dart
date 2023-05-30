
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget { 

  static String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) { 

    final styleTitle = Theme.of(context).textTheme.titleLarge;
    final int clickCounter = ref.watch(counterProvider); 
    final bool isDarkMode  = ref.watch(isDarkModeProvider); 

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
        child: Text('Valor: $clickCounter', style: styleTitle,), 
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        //ref.read(counterProvider.notifier).state++; /
        ref.read(counterProvider.notifier).update((state) => state + 1);

      }, child: const Icon(Icons.add),),
    );
  }
}