import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  //params
  final String iconImagePath;
  final String bottomText;
  //constructor
  const ActionButton({
    Key? key,
    required this.iconImagePath,
    required this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 40,
                  spreadRadius: 2,
                )
              ]),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        Text(
          bottomText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
