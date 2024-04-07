import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
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
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              balance != null
                  ? 'Your Balance: \$ $balance'
                  : 'Loading Balance...',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            // Add other portfolio-related widgets here
          ],
        ),
      ),
    );
  }
}
