import 'package:flutter/material.dart';
import 'package:vedaxi/LoanMobileApplication/Utils/AppColors.dart';


class Custombutton extends StatelessWidget {
  final String text;
  const Custombutton({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 58,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(AppColor().blueColor),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
