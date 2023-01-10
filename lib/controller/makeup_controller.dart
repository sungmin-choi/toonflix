import 'package:get/get.dart';
import 'package:toonflix/data/services.dart';
import 'package:toonflix/model/makeup_model.dart';

class MakeUpController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    var products = await Services.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
  }
}
