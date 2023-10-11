import 'dart:math';

import 'package:flutter/material.dart';

class ExercicioModulo8 extends StatefulWidget {
  const ExercicioModulo8({super.key});

  @override
  State<ExercicioModulo8> createState() => _ExercicioModulo8State();
}

class _ExercicioModulo8State extends State<ExercicioModulo8> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];
  FixedExtentScrollController _controller = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exercício Modulo 8',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Card(
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    '1',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.amber,
                  child: Center(
                      child: Text(
                    '2',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.purple,
                  child: Center(
                      child: Text(
                    '3',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, i) => Divider(color: Colors.red),
              itemCount: 12,
              itemBuilder: (context, i) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$i'),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListWheelScrollView(
              controller: _controller,
                itemExtent: 100,
                children: items.map((e) => Card(
                  color: Colors.deepOrangeAccent,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(child: Text("$e")),
                      ),
                    ],
                  ),
                )).toList()
            ),
          )
        ],
      ),
    );
  }
}
