import 'package:flutter/material.dart';
import 'package:paper_trading/trade_data.dart'; // Import trade_data.dart
import 'package:paper_trading/load_more_screen.dart'; // Import load_more_screen.dart

class TradeScreen extends StatefulWidget {
  const TradeScreen({Key? key}) : super(key: key);
  @override
  _TradeScreenState createState() => _TradeScreenState();
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

class _TradeScreenState extends State<TradeScreen> {
  // Flag to indicate if "Load More" is visible
  bool _showLoadMore = true;

  void _showItemDetails(Map<String, dynamic> item) {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => stockInfo(),
    );
  }

  void _onLoadMore() {
    // Simulate loading more data (replace with actual logic)
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _showLoadMore = false; // Hide "Load More" after simulation
      });
    });

    // Navigate to LoadMoreScreen
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoadMoreScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          tradeItems.length + (_showLoadMore ? 1 : 0), // Add 1 for Load More
      itemBuilder: (context, index) {
        if (index == tradeItems.length) {
          // Show "Load More" button if applicable
          return TextButton(
            onPressed: _onLoadMore,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 5), // Smaller padding
            ),
            child: const Text('Load More'),
          );
        }
        final item = tradeItems[index];
        return ListTile(
          title: Text(item['name']),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('\$ ', style: TextStyle(fontSize: 16)),
              Text(
                item['price'].toStringAsFixed(2),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          onTap: () => _showItemDetails(item),
        );
      },
    );
  }
}
