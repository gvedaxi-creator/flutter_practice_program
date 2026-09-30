import 'package:flutter/material.dart';
import 'package:vedaxi/LoanMobileApplication/Utils/CustomButton.dart';

class Applyloan extends StatelessWidget {
  const Applyloan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Apply for a loan",style: TextStyle(color: Colors.deepOrange),),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFF5DFD5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back, color: Colors.deepOrange),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Apply for a loan",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ],
              ),
              Text(
                "How much do you want to borrow?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Amount",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Text(
                "You have a minimum of N30,000",
                style: TextStyle(color: Colors.orange, fontSize: 12),
              ),
              SizedBox(height: 35),
              Text(
                "How long do you want the loan for?",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
              DropdownButton<int>(
                value: null,
                isExpanded: true,
                items: List.generate(
                  24,
                  (index) => DropdownMenuItem(
                    value: index + 1,
                    child: Text('${index + 1} months'),
                  ),
                ),
                onChanged: (value){},
              ),
              Text(
                "You have a minimum of 24 months",
                style: TextStyle(color: Colors.orange, fontSize: 12),
              ),
              Spacer(),
              Custombutton(text: "Apply")
            ],
          ),
        ),
      ),
    );
  }
}
