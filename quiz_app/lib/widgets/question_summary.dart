import 'package:flutter/material.dart';
import 'package:quiz_app/utils/app_colors.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: summaryData.map((e) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
              
                      color: e['user_answer'] == e['correct_answer']
                          ? AppColors().correctColor
                          : AppColors().wrongColor,
                    ),
                    child: Center(
                      child: Text(
                        ((e['question_index'] as int) + 1).toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['question'] as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 237, 237, 237),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          e['user_answer'] as String,
                          style: TextStyle(
                            color: e['user_answer'] == e['correct_answer']
                                ? AppColors().correctColor
                                : AppColors().wrongColor,
                          ),
                        ),
                        Text(
                          e['correct_answer'] as String,
                          style: TextStyle(color: AppColors().actualColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
