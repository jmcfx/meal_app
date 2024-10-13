import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  const MealItemTrait({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 17,
            color: Colors.white,
          ),
        const SizedBox(width: 6,),
          Text(label, style: const TextStyle( color: Colors.white,),)
        ],
      ),
    );
  }
}
