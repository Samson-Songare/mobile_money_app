import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.title,
    required this.gbSize,
    required this.amount,
  });
  final String title;
  final String gbSize;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            gbSize,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            amount,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
