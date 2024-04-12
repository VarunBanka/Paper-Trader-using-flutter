import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

num balance = 10000;

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);
  @override
  PortfolioScreenState createState() => PortfolioScreenState();
}

List<String> myStocks = [];

class PortfolioScreenState extends State<PortfolioScreen> {
  int? balance;

  @override
  void initState() {
    super.initState();
    _getBalance(); // Call _getBalance on widget initialization
  }

  Future<void> _getBalance() async {
    final prefs = await SharedPreferences.getInstance();
    final retrievedBalance = prefs.getInt('balance');
    setState(() {
      balance = retrievedBalance ??
          10000; // Set state with retrieved or default value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // Wrap balance and ListView in a Column
        children: [
          // Display balance (see below)
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Balance: \$${balance.toString()}',
              style: const TextStyle(fontSize: 18.0), // Adjust style (optional)
            ),
          ),
          Expanded(
            // Ensures ListView fills remaining space
            child: ListView.builder(
              itemCount: myStocks.length,
              itemBuilder: (context, index) {
                final stockName = myStocks[index];
                return ListTile(
                  title: Text(stockName),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
