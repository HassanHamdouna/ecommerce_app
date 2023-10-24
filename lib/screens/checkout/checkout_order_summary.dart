import 'package:flutter/material.dart';

class CheckoutOrderSummary extends StatelessWidget {
  const CheckoutOrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
    );
  }
}
