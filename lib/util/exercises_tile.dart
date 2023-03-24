import 'package:flutter/material.dart';

class ExercisesTile extends StatelessWidget {
  final icon;
  final Color color;
  final String nameOfExercises;
  final int numberOfExercises;
  const ExercisesTile(
      {Key? key,
      required this.icon,
      required this.nameOfExercises,
      required this.numberOfExercises, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30, left: 30, bottom: 3),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white12,
            width: 1,
          )),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: Text(
            nameOfExercises,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Text('$numberOfExercises Excercies'),
        trailing: const Icon(
          Icons.more_horiz,
          color: Colors.black54,
        ),
        iconColor: Colors.white,
      ),
    );
  }
}
