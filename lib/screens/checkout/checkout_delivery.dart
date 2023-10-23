import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutDelivery extends StatefulWidget {
  const CheckoutDelivery({super.key});

  @override
  State<CheckoutDelivery> createState() => _CheckoutDeliveryState();
}

class _CheckoutDeliveryState extends State<CheckoutDelivery> {

   int? _radioValue = 00;
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          children:  [
            const CustomText(
              title: "Standard Delivery",
              fontSize: 18,
            ),
            Row(
                children: [
                  const CustomText(
                    title: "Order will be delivered between 3 - 5  \nbusiness days",
                    fontSize: 12,
                    maxLine: 2,
                    height: 1.5,
                  ),
                  const Spacer(),
                  Radio(
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: (val) {
                      setState(() {
                        _radioValue = val;
                      });
                    },
                  ),
                ]
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomText(
              title: "Next Day Delivery",
              fontSize: 18,
            ),
            Row(
                children: [
                  const CustomText(
                    title: "Place your order before 6pm and your items  \nwill be delivered the next day",
                    fontSize: 12,
                    maxLine: 2,
                    height: 1,
                  ),
                  const Spacer(),
                  Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: (val) {
                      setState(() {
                        _radioValue = val;
                      });
                    },
                  ),
                ]
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomText(
              title: "Nominated Delivery",
              fontSize: 18,
            ),
            Row(
                children: [
                  const CustomText(
                    title: "Pick a particular date from the calendar and \norder will be delivered on selected date",
                    fontSize: 12,
                    maxLine: 2,
                    height: 1,
                  ),
                  const Spacer(),
                  Radio(
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: (val) {
                      setState(() {
                        _radioValue = val;
                      });
                    },
                  ),
                ]
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                const Spacer(),
                CustomButton(
                  onPressed: () => Navigator.pushNamed(context, '/checkout_address'),
                  text: 'NEXT',
                  sizeWight: 150,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
