import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/custom_text_field.dart';
import 'package:responsive_dashboard/components/latest_transaction_section.dart';
import 'package:responsive_dashboard/components/quich_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuichInvoiceHeader(),
          SizedBox(height: 20),
          LatestTransactionSection(),
          Divider(
            height: 48,
          ),
          Row(
            children: [
              Expanded(child: CustomTextField(hintText: 'Type customer name')),
              SizedBox(width: 50),
              Expanded(child: CustomTextField(hintText: 'Type customer name')),
            ],
          ),
        ],
      ),
    );
  }
}
