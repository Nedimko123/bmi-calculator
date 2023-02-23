//based on the bmi, get the advice from us
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

String getBMIAdvice({required double bmi}) {
  if (bmi < 18.5) {
    return 'AT RISK of nutritional deficiency and osteoporosis. You are encouraged to eat a balanced meal and to seek medical advice if necessary.';
  }
  if (bmi > 18.5 && bmi < 25) {
    return 'Achieve a healthy weight by balancing your caloric input (diet) and output (physical activity).';
  } else {
    return 'Aim to lose 5% to 10% of your body weight over 6 to 12 months by increasing physical activity and reducing caloric intake. Go for regular health screening to keep co-morbid conditions* in check.\n\n*Cardiovascular risks of metabolic syndrome, including Type 2 Diabetes, Hypertension and Hyperlipidemia.';
  }
}

Icon getBMIIcon({required double bmi}) {
  if (bmi < 18.5) {
    return Icon(
      Icons.horizontal_rule,
      size: 24.sp,
      color: Colors.orange,
    );
  }
  if (bmi > 18.5 && bmi < 25) {
    return Icon(
      Icons.thumb_up,
      size: 24.sp,
      color: Colors.green,
    );
  } else {
    return Icon(
      Icons.thumb_down,
      size: 24.sp,
      color: Colors.red,
    );
  }
}

RichText getBMIValue({required double bmi}) {
  if (bmi < 18.5) {
    return RichText(
        text: TextSpan(
      text: 'AT LOW RISK* for obesity-related diseases!\n',
      style: TextStyle(fontSize: 16.sp, color: Colors.green),
      children: <TextSpan>[
        TextSpan(
          text: '*But increased risk of other clinical problems',
          style: TextStyle(
              fontSize: 16.sp, color: Colors.red, fontStyle: FontStyle.italic),
        ),
      ],
    ));
  }
  if (bmi > 18.5 && bmi < 25) {
    return RichText(
        text: TextSpan(
      text: 'AT LOW RISK  for obesity-related diseases!',
      style: TextStyle(fontSize: 16.sp, color: Colors.green),
    ));
  } else {
    return RichText(
        text: TextSpan(
      text: 'AT HIGH RISK  for obesity-related diseases!',
      style: TextStyle(fontSize: 16.sp, color: Colors.red),
    ));
  }
}
