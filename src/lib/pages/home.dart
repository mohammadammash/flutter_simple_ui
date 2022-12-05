import 'package:flutter/material.dart';
import 'package:wallet_simple_demo/utils/Wallet_Card.dart';
import 'package:wallet_simple_demo/utils/action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            //START OF APPBAR CUSTOMIZED
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Cards',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),

          //SECTION SEPERATOR PADDING
          const SizedBox(height: 25),

          //SECTION CARDS
          Container(
            height: 200,
            child: PageView(scrollDirection: Axis.horizontal, children: [
              WalletCard(
                  balance: 5250.20,
                  cardNumber: 12345678,
                  expiryMonth: 10,
                  expiryYear: 24,
                  bgColor: Colors.deepPurple[400]),
              WalletCard(
                  balance: 342.23,
                  cardNumber: 21345678,
                  expiryMonth: 11,
                  expiryYear: 23,
                  bgColor: Colors.blue[400]),
              WalletCard(
                  balance: 10233.91,
                  cardNumber: 31245678,
                  expiryMonth: 1,
                  expiryYear: 28,
                  bgColor: Colors.green[500]),
            ]),
          ),

          //SECTION SEPERATOR PADDING
          const SizedBox(height: 35),

          //SECTION BUTTONS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ActionButton(
                iconImagePath: 'lib/icons/send-money.png',
                bottomText: 'Send',
              ),
              ActionButton(
                iconImagePath: 'lib/icons/credit-card.png',
                bottomText: 'Pay',
              ),
              ActionButton(
                iconImagePath: 'lib/icons/bill.png',
                bottomText: 'Bills',
              ),
            ],
          )
        ]),
      ),
    );
  }
}
