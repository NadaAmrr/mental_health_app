import 'package:flutter/material.dart';

class EmoticonFaces extends StatelessWidget {
  final String emoticonFace;
  final String txt;
  const EmoticonFaces({Key? key, required this.emoticonFace, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(15),
          child: Text(
            emoticonFace,
            style: TextStyle(fontSize: 28),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          txt,
          style: TextStyle(fontSize: 12,color: Colors.white),
        ),
      ],
    );
  }
}
