import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  PortfolioScreenState createState() => PortfolioScreenState();
}

List<String> myStocks = [];

class PortfolioScreenState extends State<PortfolioScreen> {
  int? balance; // Declare a variable to store the retrieved balance

  @override
  void initState() {
    super.initState();
    _getBalance(); // Call _getBalance on widget initialization
  }

  Future<void> _getBalance() async {
    final prefs = await SharedPreferences.getInstance();
    final retrievedBalance = prefs.getInt('balance');
    setState(() {
      balance =
          retrievedBalance ?? 0; // Set state with retrieved or default value
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
            padding: EdgeInsets.all(16.0), // Add padding
            child: Text(
              'Balance: \$${balance.toString()}',
              style: TextStyle(fontSize: 18.0), // Adjust style (optional)
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
