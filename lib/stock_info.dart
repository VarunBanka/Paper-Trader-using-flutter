// Widget for stock info in modal bottom sheet
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:paper_trading/portfolio_screen.dart';

class StockInfo extends StatelessWidget {
  final Map<String, dynamic> item;

  StockInfo({Key? key, required this.item}) : super(key: key);

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
                  onPressed: () async {
                    final stockName = item['name'];
                    final stockPrice = item['price'];
                    await _buyStock(context, stockName);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text('Buy'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () =>
                      _sellStock(context, item['name'], balance, item),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Sell'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _buyStock(BuildContext context, String stockName) async {
    final num stockPrice = item['price'];

    balance = balance - stockPrice;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('balance', balance.toInt());

    myStocks.add(stockName);
    await prefs.setStringList('myStocks', myStocks);

    if (!context.mounted) return;
    if (!context.mounted) return;
    Navigator.pop(context); // Close the modal bottom sheet
    print("Purchased $stockName and now the balance is $balance");
  }
}

Future<void> _sellStock(
    BuildContext context, String stockName, balance, item) async {
  final num stockPrice = item['price'];

  if (myStocks.contains(stockName) && balance >= stockPrice) {
    balance = balance + stockPrice;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('balance', balance.toInt());

    myStocks.remove(stockName);
    await prefs.setStringList('myStocks', myStocks);
    print("Sold $stockName and now the balance is $balance");
  } else {
    String message;
    if (!myStocks.contains(stockName)) {
      message = "You don't own $stockName.";
    } else {
      message = "Insufficient balance to sell $stockName.";
    }

    // Show informative dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sell Stock'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  if (!context.mounted) return;
  Navigator.pop(context); // Close modal bottom sheet
}
