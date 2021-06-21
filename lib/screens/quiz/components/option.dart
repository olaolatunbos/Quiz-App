import 'package:estudio_quiz/constants.dart';
import 'package:estudio_quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return kGreenColor;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return kRedColor;
              }
            }
            return Colors.black;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.fromLTRB(7, 15, 0, 0),
              width: 320,
              height: 55,
              decoration: BoxDecoration(
                  color: kShadowColor,
                  border: Border.all(color: getTheRightColor(), width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Column(
                  children: [
                    Text("$text",
                        style: TextStyle(
                          color: getTheRightColor(),
                          fontSize: 18,
                        )),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
