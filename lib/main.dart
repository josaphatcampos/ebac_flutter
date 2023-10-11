import 'package:first_flutter_app/pages/exercicio_modulo_10.dart';
import 'package:first_flutter_app/pages/exercicio_modulo_7.dart';
import 'package:first_flutter_app/pages/exercicio_modulo_8.dart';
import 'package:first_flutter_app/pages/exercicio_modulo_9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ebac',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExercicioModulo10(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showName = false;
  IconData _visibilityIcon = Icons.visibility;

  void _nameToogle() {
    _showName = !_showName;
    _visibilityIcon = _showName ? Icons.visibility_off : Icons.visibility;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: _showName,
              child: Text(
                'Josaphat',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _nameToogle,
        tooltip: 'Show Name',
        child: Icon(_visibilityIcon),
      ),
    );
  }
}
