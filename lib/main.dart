import 'package:flutter/material.dart';
import 'package:paper_trading/trade_screen.dart';
import 'package:paper_trading/portfolio_screen.dart';
import 'package:paper_trading/about_screen.dart';
import 'package:paper_trading/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dark Theme App',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Search icon for Load More screen
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoadMoreScreen())),
          ),
        ],
      ),
      body: _buildBody(), // Delegate body building based on index
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return TradeScreen();
      case 1:
        return PortfolioScreen();
      case 2:
        return AboutScreen();
      default:
        return const Center(child: Text('Unknown Tab'));
    }
  }
}
