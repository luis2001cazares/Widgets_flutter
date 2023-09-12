import 'package:flutter/material.dart';
import 'package:widgets/pages/alert_dialog.dart';
import 'package:widgets/pages/bottom_navigation_bar.dart';
import 'package:widgets/pages/card_class.dart';
import 'package:widgets/pages/checkbox.dart';
import 'package:widgets/pages/show_date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets'),
          bottom: PreferredSize(
            child: BottomNavigationBarWidget(),
            preferredSize: Size.fromHeight(50),
          ),
        ),
        body: SingleChildScrollView( // Envuelve la columna con SingleChildScrollView
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlertDialogWidget(),
              CardWidget(),
              DatePickerWidget(
                onDateSelected: (date) {
                  // Maneja la fecha seleccionada aquí.
                  print("Fecha seleccionada: $date");
                },
              ),
              Row(
                children: [
                  CheckboxWidget(),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text('Checkbox'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
