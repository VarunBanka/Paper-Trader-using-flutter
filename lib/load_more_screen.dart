import 'package:flutter/material.dart';

class LoadMoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Load More'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context), // Navigate back on tap
        ),
      ),
      body: Center(
        child: Text('This is the Load More screen.'),
      ),
    );
  }
}
