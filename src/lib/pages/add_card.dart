import 'package:flutter/material.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Card'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: Column(
        children: [
          Image.asset('lib/icons/flutter_logo.jpg'),
          //SizeBox: like margin-top
          const SizedBox(
            height: 10,
          ),

          const Divider(
            color: Colors.black,
          ),

          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(5.0),
            width: double.infinity,
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.blue : Colors.green,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              debugPrint('Outlined Button');
            },
            child: const Text('Outlined Button'),
          ),

          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: const Text('Text Button'),
          ),

          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (() {
              debugPrint('Row Clicked');
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_fire_department, color: Colors.blue),
                Text('Row Widget'),
                Icon(Icons.local_fire_department, color: Colors.blue),
              ],
            ),
          ),

          Switch(
            value: isSwitch,
            onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
              });
            },
          )
        ],
      ),
    );
  }
}
