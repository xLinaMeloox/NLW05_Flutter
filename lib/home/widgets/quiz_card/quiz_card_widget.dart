import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 40,
          width: 40,
          // color: AppColors.red,
          child: Image.asset(AppImages.blocks),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Gerenciamento de Estado",
          style: AppTextStyles.heading15,
        ),
         SizedBox(
          height: 20,
        ),
        Row(children: [
          Expanded(
            flex: 1,
            child: Text(
              "3/10",
              style: AppTextStyles.body11,
            ),
          ),
          Expanded(
            flex: 4,
            child: LinearProgressIndicator(
              value: 0.3,
              backgroundColor: AppColors.chartSecondary,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
            ),
          ),
        ])
      ]),
    );
  }
}

//Parei no 00:50:04 - aula 02