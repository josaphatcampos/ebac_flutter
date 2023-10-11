import 'package:flutter/material.dart';

class ExercicioModulo7 extends StatefulWidget {
  const ExercicioModulo7({super.key});

  @override
  State<ExercicioModulo7> createState() => _ExercicioModulo7State();
}

class _ExercicioModulo7State extends State<ExercicioModulo7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício Modulo 7', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
        child: Center(
          child: Column(
            children: [
              Text("Um texto Qualquer"),
              Expanded(child: Icon(Icons.accessibility_rounded, size: 32,)),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:  NetworkImage('https://instagram.frao6-1.fna.fbcdn.net/v/t51.2885-19/363524689_1629159867595573_6198793585830139634_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.frao6-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=iJ4ZprBpiBcAX8TOrYV&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBmJFf26GT8vlXLXmcOV-VNUl6yMB9DyBZtyCoiE59a-g&oe=6527A36E&_nc_sid=8b3546'),
                    fit: BoxFit.cover
                  )

                  )
                ),
            ],
          ),
        ),
      ),
    );
  }
}
