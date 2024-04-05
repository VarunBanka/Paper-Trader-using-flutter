import 'package:flutter/material.dart';
import 'package:paper_trading/trade_data.dart'; // Import trade_data.dart

class LoadMoreScreen extends StatefulWidget {
  const LoadMoreScreen({Key? key}) : super(key: key);
  @override
  _LoadMoreScreenState createState() => _LoadMoreScreenState();
}

stockInfo() {
  // dont mess with this func
  return const Center(
    child: SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Made By Varun Banka")],
        ),
      ),
    ),
  );
}

class _LoadMoreScreenState extends State<LoadMoreScreen> {
  // Use a different list variable for Load More data
  final List<Map<String, dynamic>> loadMoreItems =
      fullData; // Assuming "tradeItems" holds different stocks

  void _showItemDetails(Map<String, dynamic> item) {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => stockInfo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Load More'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Navigate back on tap
        ),
      ),
      body: ListView.builder(
        itemCount: loadMoreItems.length,
        itemBuilder: (context, index) {
          final item = loadMoreItems[index];
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
            onTap: () => _showItemDetails(item), // Call showItemDetails on tap
          );
        },
      ),
    );
  }
}
