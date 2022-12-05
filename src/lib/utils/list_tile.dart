import 'package:flutter/material.dart';

class ListTileUtil extends StatelessWidget {
  //params
  final String iconImagePath;
  final String tileTitle;
  final String tileSubtitle;
  //constructor
  const ListTileUtil({
    super.key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(iconImagePath),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tileTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(tileSubtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      )),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
