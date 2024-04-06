// old loadMore screen

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
  final List<Map<String, dynamic>> loadMoreItems = tradeItems;
  final List<Map<String, dynamic>> filteredItems = [];
  String searchText = "";

  void _showItemDetails(Map<String, dynamic> item) {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => stockInfo(),
    );
  }

  void _filterItems(String text) {
    setState(() {
      searchText = text;
      filteredItems.clear(); // Clear before rebuilding
      filteredItems.addAll(loadMoreItems.where(
          (item) => item['name'].toLowerCase().contains(text.toLowerCase())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Navigate back on tap
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Stocks...',
                prefixIcon: const Icon(Icons.search),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: _filterItems,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.toSet().toList().length,
              itemBuilder: (context, index) {
                final item = filteredItems.toSet().toList()[index];
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
          ),
        ],
      ),
    );
  }
}
