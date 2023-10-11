import 'package:flutter/material.dart';

enum Directions{
  up,
  down,
  left,
  right
}

extension DirectionIcon on Directions{
  Widget get icon {
    switch (this){
      case Directions.up:
        return const Icon(Icons.arrow_upward, color: Colors.white,);
      case Directions.down:
        return const Icon(Icons.arrow_downward, color: Colors.white,);
      case Directions.left:
        return const Icon(Icons.arrow_back, color: Colors.white,);
      case Directions.right:
        return const Icon(Icons.arrow_forward, color: Colors.white,);
      default:
        return const Icon(Icons.arrow_back, color: Colors.white,);
    }
  }
}

class ArrowButton extends StatelessWidget {
  final Directions direction;
  const ArrowButton({super.key, required this.direction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5)
      ),
      child: direction.icon,
    );
  }
}
