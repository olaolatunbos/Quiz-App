import 'package:estudio_quiz/constants.dart';
import 'package:estudio_quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:estudio_quiz/models/Questions.dart';
import 'progress_bar.dart';
import 'question_card.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    // So that we have acccess our controller
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    ProgressBar(),
                    SizedBox(height: 35),
                    Obx(() => Text.rich(TextSpan(
                            text:
                                "Question ${_questionController.questionNumber.value}",
                            children: [
                              TextSpan(
                                  text:
                                      "/${_questionController.questions.length}")
                            ])))
                  ],
                ),
              ),
              Expanded(
                  child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged: _questionController.updateTheQnNum,
                itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                  question: _questionController.questions[index],
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
