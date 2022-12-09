import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30.0);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click Counter:",
              style: textStyle,
            ),
            Text(
              "0",
              style: textStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              elevation: 0.6,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              elevation: 0.6,
              onPressed: () {},
              child: const Icon(Icons.restart_alt),
            ),
            FloatingActionButton(
              elevation: 0.6,
              onPressed: () {},
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
