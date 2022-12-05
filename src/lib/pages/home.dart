import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //local styling
    const cardtext_color = Colors.white;

    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
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

          //START OF CARDS:
          Container(
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
                    style: TextStyle(color: cardtext_color, fontSize: 18)),
                const SizedBox(height: 12),
                const Text('\$5,250.20',
                    style: TextStyle(
                        color: cardtext_color, fontSize: 35, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("**** 3456", style: TextStyle(color: cardtext_color)),
                    Text('10/24', style: TextStyle(color: cardtext_color)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
