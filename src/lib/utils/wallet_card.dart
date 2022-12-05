import 'package:flutter/material.dart';

//local vars
const cardTextColor = Colors.white;

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Balance',
              style: TextStyle(color: cardTextColor, fontSize: 18)),
          const SizedBox(height: 12),
          const Text('\$5,250.20',
              style: TextStyle(
                  color: cardTextColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("**** 3456", style: TextStyle(color: cardTextColor)),
              Text('10/24', style: TextStyle(color: cardTextColor)),
            ],
          )
        ],
      ),
    );
  }
}
