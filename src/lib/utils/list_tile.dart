import 'package:flutter/material.dart';

class ListTileUtil extends StatelessWidget {
  const ListTileUtil({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              child: Image.asset('lib/icons/statistics.png'),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Statistics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                const SizedBox(
                  height: 5,
                ),
                Text('Payments and Icons',
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
    );
  }
}
