import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/product_controller.dart';
class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Product1Contoller product1Controller = Get.find<Product1Contoller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: GetBuilder<Product1Contoller>(
        builder: (controller) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 150,
                        margin: EdgeInsets.all(14),
                        decoration: BoxDecoration(

                            image: DecorationImage(
                                image: AssetImage(product1Controller.addedProcuts1[index].image),
                            )
                        ),
                      ),
                      Text("${product1Controller.addedProcuts1[index].price}",style: TextStyle(
                        fontSize: 30,

                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${product1Controller.addedProcuts1[index].name}",style: TextStyle(
                        fontSize: 30,

                      )),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: product1Controller.addedProcuts1.length,
          );
        },
      ),
      // body: Obx(() {
      //   final cartItems = shoppingCartController.cartItems;
      //
      //   if (cartItems.isEmpty) {
      //     return Center(
      //       child: Text('Your shopping cart is empty.'),
      //     );
      //   }
      //
      //   return ListView.builder(
      //     itemCount: cartItems.length,
      //     itemBuilder: (context, index) {
      //       final cartItem = cartItems[index];
      //
      //       return ListTile(
      //         leading: CircleAvatar(
      //           backgroundImage: AssetImage(cartItem.image),
      //         ),
      //         title: Text(cartItem.name),
      //         subtitle: Text('Price: \$${cartItem.price}'),
      //         // You can add more details here as needed
      //       );
      //     },
      //   );
      // }),
    );
  }
}
