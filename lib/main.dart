import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toonflix/widgets/fish_model.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => FishModel(name: 'Salmon', number: 10, size: 'big'),
      child: const MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish Order'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Fish name ${Provider.of<FishModel>(context).name}',
                style: const TextStyle(fontSize: 20)),
            const High()
          ],
        ),
      ),
    );
  }
}

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('SpicyA is located at high place', style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        SpicyA()
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Fish number ${Provider.of<FishModel>(context).number}',
            style: const TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold)),
        Text('Fish size ${Provider.of<FishModel>(context).size}',
            style: const TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        const Middle()
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Text('SpicyB is located at middle place', style: TextStyle(fontSize: 16)),
      SizedBox(height: 20),
      SpicyB()
    ]);
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Fish number',
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold)),
        Text('Fish size',
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Low()
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('SpicyA is located at Low place', style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        SpicyC()
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Fish number',
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold)),
        Text('Fish size',
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
      ],
    );
  }
}
