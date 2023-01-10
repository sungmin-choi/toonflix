import 'package:get/get.dart';
import 'package:toonflix/model/makeup_model.dart';

class MakeUpCartController extends GetxController {
  var cartItems = <Product>[].obs;

  int get count => cartItems.length;
  void addToCart(Product product) {
    cartItems.add(product);
  }
}
