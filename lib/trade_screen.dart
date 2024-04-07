import 'package:flutter/material.dart';
import 'package:paper_trading/database.dart'; // Import trade_data.dart
import 'package:paper_trading/stock_info.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({Key? key}) : super(key: key);
  @override
  _TradeScreenState createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  void _showItemDetails(Map<String, dynamic> item) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => StockInfo(item: item),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: tradeItems.length, // No need for Load More indicator
        itemBuilder: (context, index) {
          final item = tradeItems[index];
          return ListTile(
            title: Text(item['name']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('\$ ', style: TextStyle(fontSize: 16)),
                Text(
                  item['price'].toStringAsFixed(2),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            onTap: () => _showItemDetails(item),
          );
        },
      ),
    );
  }
}
