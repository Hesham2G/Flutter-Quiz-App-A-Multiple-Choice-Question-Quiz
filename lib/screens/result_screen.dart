import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

class Screens extends StatefulWidget {
  final int score;
  const Screens(this.score,{super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
  Color secondColor = Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Congratutions",
            style: TextStyle(
              color: Colors.white,
              fontSize: 38.0,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20.0,),
              Text("Your Score is :",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontWeight: FontWeight.w400
              ),
              ),
              SizedBox(height: 50.0),
              Text("${widget.score}",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 60.0,),
                MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                elevation: 0.0,
                color: Colors.orange,
                textColor: Colors.white,
                child: Text("Repeat yhe Quizz"),
                )
          ],),
      ),
    );
  }
}