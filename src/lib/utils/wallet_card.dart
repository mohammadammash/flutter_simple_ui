import 'package:flutter/material.dart';

//local vars
const cardTextColor = Colors.white;

class WalletCard extends StatelessWidget {
  //params
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color? bgColor;

  //constructor
  const WalletCard({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      width: 400,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Balance',
              style: TextStyle(color: cardTextColor, fontSize: 18)),
          const SizedBox(height: 12),
          Text('\$ ${balance.toString()}',
              style: const TextStyle(
                  color: cardTextColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cardNumber.toString(),
                  style: const TextStyle(color: cardTextColor)),
              Text('${expiryMonth.toString()}/${expiryYear.toString()}',
                  style: const TextStyle(color: cardTextColor)),
            ],
          )
        ],
      ),
    );
  }
}
