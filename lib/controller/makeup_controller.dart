import 'package:get/get.dart';
import 'package:toonflix/data/services.dart';
import 'package:toonflix/model/makeup_model.dart';

class MakeUpController extends GetxController {
  static MakeUpController get to => Get.find();
  var productList = <Product>[].obs;
  var loading = true.obs;
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
    loading.value = false;
  }
}
