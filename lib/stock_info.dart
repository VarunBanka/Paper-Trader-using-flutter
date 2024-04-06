// Widget for stock info in modal bottom sheet
import 'package:flutter/material.dart';

class StockInfo extends StatelessWidget {
  final Map<String, dynamic> item;
  const StockInfo({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${item['name']} - \$ ${item['price']}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              width: 30,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text('Buy'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Sell'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
