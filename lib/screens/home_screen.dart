import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void reset() => setState(() => counter = 0);
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
              counter.toString(),
              style: textStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomFloatingActionBar(
          decreaseFn: decrease,
          increaseFn: increase,
          resetFn: reset,
        ),
      ),
    );
  }
}

class CustomFloatingActionBar extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActionBar({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          elevation: 0.6,
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          elevation: 0.6,
          onPressed: () => resetFn(),
          child: const Icon(Icons.restart_alt),
        ),
        FloatingActionButton(
          elevation: 0.6,
          onPressed: () => increaseFn(),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
