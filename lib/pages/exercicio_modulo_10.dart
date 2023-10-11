import 'package:first_flutter_app/pages/widgets/ArrowButton.dart';
import 'package:flutter/material.dart';
//stles
//stfull
//gesture
class ExercicioModulo10 extends StatefulWidget {
  const ExercicioModulo10({super.key});

  @override
  State<ExercicioModulo10> createState() => _ExercicioModulo10State();
}

class _ExercicioModulo10State extends State<ExercicioModulo10> {
  double _top = 0;
  double _left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exercício Modulo 10',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      _top = _top <= 0 ? 0 : _top - 10;
                      setState(() {});
                    },
                    child: const ArrowButton(direction: Directions.up,),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          _left = _left <= 0 ? 0 : _left - 10;
                          setState(() {});
                        },
                        child: const ArrowButton(direction: Directions.left,)
                      ),
                      const SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          _top = 0;
                          _left = 0;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text("Restart", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          _left = _left >= MediaQuery.of(context).size.width - 100 ? MediaQuery.of(context).size.width-100 : _left + 10;
                          setState(() {});
                        },
                        child: const ArrowButton(direction: Directions.right,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      _top = _top >= MediaQuery.of(context).size.height - 200 ? MediaQuery.of(context).size.height-200 : _top + 10;
                      setState(() {});
                    },
                    child: const ArrowButton(direction: Directions.down,),
                  ),
                  const SizedBox(height: 100,)
                ],
              ),
            ),
            Positioned(
              top: _top ,
              left: _left,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple
                ),
              ),
            ),
          ],
        ),
    );
  }
}
