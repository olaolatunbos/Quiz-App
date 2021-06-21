import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:estudio_quiz/constants.dart';
import 'package:estudio_quiz/controllers/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/icons/score_bg.png", fit: BoxFit.fill),
          Column(
            children: [
              SizedBox(height: 220),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(color: kSecondaryColor),
              ),
              Stack(
                children: <Widget>[
                  Image.asset("assets/icons/circle.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(85, 80, 0, 0),
                    child: Text(
                        "${((_qnController.correctAns / _qnController.questions.length)).toStringAsFixed(0)}%",
                        style: Theme.of(context).textTheme.headline1),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(85, 120, 0, 0),
                    child: Text(
                        "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                        style: Theme.of(context).textTheme.headline2),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("You are awesome!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'HKGrotesk',
                        fontSize: 24,
                      )),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(55, 0, 40, 0),
                    child: Text(
                      "Congratulations for getting all the answers correct!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'HKGrotesk',
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 150),
              Image.asset(
                "assets/icons/share.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
