import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title with icon
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),

              // App Information section with card design
              Card(
                elevation: 4.0, // Add some shadow effect
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paper Trader',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'App Version: 1.0.0',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'This app gives you a simulated 10000 USD (think points) to trade virtual stocks in a real-time market environment. Buy and sell like a real investor, but without the risk. It is the perfect practice ground to learn the ropes of the stock market and test your trading strategies.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              // Disclaimer with improved formatting and spacing
              const Text(
                'Disclaimer:',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              const SizedBox(height: 5.0),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                  children: [
                    TextSpan(
                      text:
                          'This is a paper trading app designed for educational purposes only. ',
                    ),
                    TextSpan(
                      text:
                          'It does not display real-time market data and uses simulated values. ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            'The developers are not responsible for any actions taken based on information within the app.'),
                  ],
                ),
              ),

              const SizedBox(height: 20.0),

              // Developer Information with icon
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.developer_mode, size: 30.0, color: Colors.teal),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Made by: Gemini with Prompt Engineering by',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
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
            ],
          ),
        ),
      ),
    );
  }
}
