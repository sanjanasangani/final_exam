import 'package:get/get.dart';

import '../modal/product_modal.dart';


class Product1Contoller extends GetxController{
  List<Product> addedProcuts1 = [];

  void addProduct1({required Product data}){
    addedProcuts1.add(data);
    update();
  }
  void removeProduct1({required Product data}){
    addedProcuts1.remove(data);
    update();
  }


}
