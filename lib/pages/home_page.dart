import 'package:flutter/material.dart';
import 'package:taxguard/util/emotion_face.dart';
import 'package:taxguard/util/exercise_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: "message"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),

      ]),
      body: SafeArea(
        child: Column(children: [

          //Greetings
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Hi Sam!

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Sam",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      Text(
                        '31 jan, 2023',
                        style: TextStyle(color: Colors.blue[100]),
                      ),
                    ],
                  ),

                  //Notification
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,),
                  )
                ],
              ),
              SizedBox(height: 25,
              ),

              //Search bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "search",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25,
              ),

              //how do you feel
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),

              //4 different faces
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // bad
                  Column(
                    children: [
                      EmotionFace(
                        emotionFace: '😣',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Bad",
                        style: TextStyle(color: Colors.white),

                      )
                    ],
                  ),
                  //fine

                  Column(
                    children: [
                      EmotionFace(
                        emotionFace: '😣',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Bad",
                        style: TextStyle(color: Colors.white),

                      )
                    ],
                  ),
                  //well
                  Column(
                    children: [
                      EmotionFace(
                        emotionFace: '😊',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "well",
                        style: TextStyle(color: Colors.white),

                      )
                    ],
                  ),

                  //excellent
                  Column(
                    children: [
                      EmotionFace(
                        emotionFace: '🥳',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "excellent",
                        style: TextStyle(color: Colors.white),

                      )
                    ],
                  ),

                ],
              ),
            ],),
          ),
          SizedBox(
            height: 25,),
          Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // exercise Heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "Exercise",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                      SizedBox(
                        height: 20,
                      ),
                      //Listview of exercise
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: "Speaking Skills",
                              numberofExercises: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: "Reading Skills",
                              numberofExercises: 8,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: "Writing Skills",
                              numberofExercises: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      )
                  ],

                  ),
                ),
                
              ),
            ),

        ],
        ),
      ),
    );
  }
}
