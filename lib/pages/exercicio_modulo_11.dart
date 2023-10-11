import 'dart:ui';

import 'package:first_flutter_app/controllers/controller_modulo_11.dart';
import 'package:flutter/material.dart';

class ExercicioModulo11 extends StatefulWidget {
  const ExercicioModulo11({super.key});

  @override
  State<ExercicioModulo11> createState() => _ExercicioModulo11State();
}

class _ExercicioModulo11State extends State<ExercicioModulo11> {
  final ControllerExercicioModulo11 _controller = ControllerExercicioModulo11();

  void changeVisibility() {
    _controller.visibility.value = !_controller.visibility.value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Buid da tela");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Exercício Modulo 11',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.isOn.value?
            _controller.toggleVisibility():changeVisibility();
          },
          child: ValueListenableBuilder(valueListenable: _controller.visibility, builder: (context, value, child) {
            return Icon(_controller.visibility.value
                ? Icons.visibility
                : Icons.visibility_off);
          },)),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_VFQ424B7lC9s5NrxRBSPGuxx51bpyBXRgA&usqp=CAU'),
                        fit: BoxFit.contain)),
              ),
              ValueListenableBuilder(
                valueListenable: _controller.isOn,
                builder: (context, value, child) {
                  return Switch(
                      value: _controller.isOn.value,
                      onChanged: (v) {
                        _controller.updateSwitch();
                      });
                },
              ),
              ValueListenableBuilder(valueListenable: _controller.isOn, builder: (context, value, child) {
                return Visibility(
                    visible: _controller.isOn.value,
                    child: Text('Utilizando o Change Notifier'));
              },)
            ],
          ),
          ValueListenableBuilder(
            valueListenable: _controller.visibility,
            builder: (context, value, child) {
              return Visibility(
                visible: _controller.visibility.value,
                child: Center(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Icon(
                          Icons.visibility_off,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
