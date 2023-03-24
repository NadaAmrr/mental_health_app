import 'package:flutter/material.dart';
import 'package:mental_health_app/util/emoticon_face.dart';
import 'package:mental_health_app/util/exercises_tile.dart';

SafeArea buildHomeBody() {
  return SafeArea(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            ListTile(
              title: Text(
                'Hi, Jared',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '23 Jan, 2021',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //search bar
            Container(
              margin: EdgeInsets.only(left: 17, right: 17),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            // How do you feel
            ListTile(
              title: Text(
                'How do you feel?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
            //4 emojes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                //badly
                EmoticonFaces(
                  emoticonFace: '😣',
                  txt: 'Badly',
                ),
                //fine
                EmoticonFaces(
                  emoticonFace: '😊',
                  txt: 'Fine',
                ),
                //well
                EmoticonFaces(
                  emoticonFace: '😁',
                  txt: 'Well',
                ),
                //excellent
                EmoticonFaces(
                  emoticonFace: '😀',
                  txt: 'Excellent',
                ),
              ],
            ),
            Container(),
          ]),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const ListTile(
                    title: Text(
                      'Exercises',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.more_horiz),
                    contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 10)
                ),
                Expanded(
                  child: ListView(
                    children: const[
                      ExercisesTile(nameOfExercises: 'Speaking skills', numberOfExercises: 16, icon: Icons.favorite, color: Colors.deepOrangeAccent,),
                      ExercisesTile(nameOfExercises: 'Reading speed', numberOfExercises: 8, icon: Icons.person, color: Colors.indigo,),
                      ExercisesTile(nameOfExercises: 'Writing skills', numberOfExercises: 4, icon: Icons.wysiwyg_rounded, color: Colors.pinkAccent,),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}