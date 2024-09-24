import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/custom_button.dart';
import 'package:responsive_dashboard/components/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Item amount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 26),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                backgroundColor: Colors.white,
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomButton(
                text: 'Send money',
                backgroundColor: Color(0xff4EB7F2),
                textColor: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
