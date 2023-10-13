
import 'package:flutter/material.dart';

class ExercicioModulo18 extends StatefulWidget {
  const ExercicioModulo18({super.key});

  @override
  State<ExercicioModulo18> createState() => _ExercicioModulo18State();
}

class _ExercicioModulo18State extends State<ExercicioModulo18> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  final Duration _duration = const Duration(milliseconds: 1300);
  late Animation<Alignment> _align;
  late Animation<double> _size;


  @override
  void initState() {
    super.initState();
    
    _animationController = AnimationController(vsync: this, duration: _duration);

    _align = Tween(begin: Alignment.bottomCenter, end: Alignment.topCenter).animate(CurvedAnimation(parent: _animationController, curve: Curves.bounceIn));
    _size = Tween(begin:200.0, end: 100.0).animate(CurvedAnimation(parent: _animationController, curve: Curves.elasticIn));


    _animationController.addListener(() {
      if(_animationController.isCompleted){
        _animationController.reverse();
      }
    });

    
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animação Controlada'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  _animationController.forward();
                }, child: Icon(Icons.play_arrow))
              ],
            ),
          ),
          AnimatedBuilder(
              animation: _animationController, builder: (context, child) {
                return Align(
                  alignment: _align.value,
                  child: Container(
                    height: _size.value,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(200)
                    ),
                  ),
                );
              },)

        ],
      ),
    );
  }
}
