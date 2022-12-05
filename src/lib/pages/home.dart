import 'package:flutter/material.dart';
import 'package:wallet_simple_demo/utils/Wallet_Card.dart';

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
                  bgColor: Colors.deepPurple[200]),
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
          const SizedBox(height: 25),

          //SECTION BUTTONS
          Row(
            children: [
              //send button
              Column(
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
                      child: Image.asset('lib/icons/send-money.png'),
                    ),
                  ),
                  Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
