import 'package:estudio_quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'option.dart';
import 'package:estudio_quiz/models/Questions.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              question.question,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'HKGrotesk',
              ),
            ),
          ),
          SizedBox(height: 30),
          Image.asset(question.image),
          SizedBox(height: 40),
          ...List.generate(
              question.options.length,
              (index) => Option(
                    index: index,
                    text: question.options[index],
                    press: () => _controller.checkAns(question, index),
                  ))
        ],
      ),
    );
  }
}
