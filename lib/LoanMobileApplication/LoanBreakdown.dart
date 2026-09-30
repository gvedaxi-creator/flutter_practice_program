import 'package:flutter/material.dart';

class Loanbreakdown extends StatelessWidget {
  const Loanbreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Loan Breakdown",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
