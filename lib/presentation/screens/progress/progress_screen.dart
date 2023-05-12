import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),
          SizedBox(height: 30,),
          CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black54,),

          SizedBox(height: 30,),
          Text('Circular and Linear progress controlado'),
          SizedBox(height: 30,),
          CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black54,),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}


class _ControllerProgressIndicator extends StatelessWidget {
  
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {

      final progressValue = snapshot.data ?? 0;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            CircularProgressIndicator(value: progressValue, strokeWidth: 2, backgroundColor: Colors.black87,),
            const SizedBox(width: 20,),
            Expanded(child: LinearProgressIndicator(value: progressValue,))
            
          ],
        ),
      );
      }
    );
  }
}