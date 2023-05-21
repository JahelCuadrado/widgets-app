import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  bool _isExpanded = false;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),


        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          onExpansionChanged: (value) {
                    setState(() {
                value = true;
            });
          },
          children: [

            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Viajar en coche'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: ((value) => setState(() {
                      selectedTransportation = Transportation.car;
                      _isExpanded = false;
                    }))),

            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Viajar en barco'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: ((value) => setState(() {
                      selectedTransportation = Transportation.boat;
                      _isExpanded = false;
                    }))),

            RadioListTile(
                title: const Text('By plane'),
                subtitle: const Text('Viajar en Avion'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: ((value) => setState(() {
                      selectedTransportation = Transportation.plane;
                      _isExpanded = false;
                    }))),

            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Viajar en submarino'),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: ((value) => setState(() {
                      selectedTransportation = Transportation.submarine;
                      _isExpanded = false;
                    }))),
          ],


        ),

        CheckboxListTile(
          title: const Text('Desayuno'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
          ),

        CheckboxListTile(
          title: const Text('Almuerzo'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
          ),

        CheckboxListTile(
          title: const Text('Cena'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
          ),

      ],
    );
  }
}
