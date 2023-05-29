import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {//TODO 3: riverpod

  static String name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) { //TODO 4: riverpod

    final clickCounter = ref.watch(counterProvider); //TODO 5: riverpod

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: const Center( child: Text('Valor: 10', 
        style: TextStyle(
          fontSize: 30,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){}, 
        child: const Icon(Icons.add),
        ),
    );
  }
}