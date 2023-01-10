import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toonflix/view/my_page.dart';

void main() {
  runApp(const GetMaterialApp(home: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyPage(),
    );
  }
}
