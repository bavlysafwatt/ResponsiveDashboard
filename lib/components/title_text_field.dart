import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/custom_text_field.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.title, required this.hintText});

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 3.0),
          child: Text(
            title,
            style: AppStyles.styleMedium16,
          ),
        ),
        const SizedBox(height: 12),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
