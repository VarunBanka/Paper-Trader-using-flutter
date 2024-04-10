import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title with decoration
              Text(
                'About',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Divider(thickness: 1.0), // Decorative divider

              // Developer Information
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.developer_mode, size: 30.0),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Made by: Gemini with Prompt Engineering by',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'Varun Banka (varun870@outlook.com)',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0), // Extra spacing

              // App Information
              Divider(thickness: 1.0), // Decorative divider

              Text(
                'App Name',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                'App Version: 1.0.0',
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                'This app gives you a simulated 10000 USD (think points) to trade virtual stocks in a real-time market environment. Buy and sell like a real investor, but without the risk. It is the perfect practice ground to learn the ropes of the stock market and test your trading strategies.',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
