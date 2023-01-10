import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toonflix/view/product_tile.dart';

import '../controller/makeup_controller.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final controller = Get.put(MakeUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makeup Shop'),
        backgroundColor: Colors.black12,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.view_list_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              mainAxisSpacing: 10, //수평 Padding
              crossAxisSpacing: 10, //수직 Padding
            ),
            itemCount: controller.productList.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductTile(controller.productList[index]);
            },
          ),
        ),
      ),
    );
  }
}
