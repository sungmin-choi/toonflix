import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toonflix/controller/shopping_controller.dart';
import 'package:toonflix/controller/cart_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({super.key});
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 120),
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) => Card(
                    margin: const EdgeInsets.all(5),
                    child: Padding(
                      padding: const EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.products[index].productName,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  Text(controller
                                      .products[index].productDescription)
                                ],
                              ),
                              Text(
                                '\$${controller.products[index].price}',
                                style: const TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () => {
                                    cartController
                                        .addToCart(controller.products[index])
                                  },
                              child: const Text('Add to Cart'))
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 50),
            GetX<CartController>(builder: (controller) {
              return Text(
                'Total amount: \$ ${controller.totalPrice}',
                style: const TextStyle(fontSize: 18),
              );
            })
          ],
        ),
      ),
      floatingActionButton: GetX<CartController>(builder: (controller) {
        return FloatingActionButton.extended(
          onPressed: () => {},
          label: Text(controller.count.toString(),
              style: const TextStyle(fontSize: 20)),
          icon: const Icon(Icons.add_shopping_cart_sharp),
        );
      }),
    );
  }
}
