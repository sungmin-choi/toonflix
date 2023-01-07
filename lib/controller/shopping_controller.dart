import 'package:get/get.dart';

import '../model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    var productsData = [
      Product(
          id: 1, productName: '컵', productDescription: '깻끈한 300ml 컵', price: 5),
      Product(
          id: 2, productName: '그릇', productDescription: '깻끈한 유리 그릇', price: 10),
      Product(
          id: 3,
          productName: '접시',
          productDescription: '꽃 그림 그려진 접시',
          price: 12),
      Product(
          id: 4, productName: '성냥개비', productDescription: '일회용 성냥', price: 1),
      Product(
          id: 5,
          productName: '간이밥상',
          productDescription: '접었다 폇다 할 수 있는 밥상',
          price: 17)
    ];
    products.assignAll(productsData);
  }
}
