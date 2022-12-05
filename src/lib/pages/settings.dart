import 'package:flutter/material.dart';

const int itemCount = 20;

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //LIKE REACT NATIVE FLATLIST
    return ListView.builder(
      itemCount: itemCount, //repeated 20 times
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('item ${index + 1}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          onTap: () {
            debugPrint('Item ${index + 1} Clicked');
          },
        );
      },
    );
  }
}
