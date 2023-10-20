import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/chair.dart';
import 'cart_page.dart';

class Details_page extends StatefulWidget {
  const Details_page({Key? key}) : super(key: key);

  @override
  State<Details_page> createState() => _Details_pageState();
}

class _Details_pageState extends State<Details_page> {

  int data = 0;


  @override
  Widget build(BuildContext context) {
    int data = ModalRoute.of(context)!.settings.arguments as int;




    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(CupertinoIcons.arrow_left),
                    ),
                    SizedBox(
                      width: Get.height * 0.13,
                    ),
                    const Text(
                      "Details",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.4,
              width: Get.width * 0.75,
              child: Container(

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${productlist[data].image}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${productlist[data].use}"),
                        SizedBox(
                          height: Get.height * 0.015,
                        ),
                        Text("${productlist[data].name}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            )),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Text("${productlist[data].star}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                        onPressed: () {


                  }, icon:  Icon(Icons.add_shopping_cart),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.10,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(Get.width *  0.03),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text.rich(
                                TextSpan(children: [
                                  const TextSpan(text: "Price : "),
                                  TextSpan(
                                      text: "${productlist[data].price}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 22)),
                                ]),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: () {

                              }, icon: const Icon(Icons.remove)),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("1"),
                              const SizedBox(
                                width: 10,
                              ),
                              IconButton(onPressed: () {

                              }, icon: const Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height * 0.08,
                    width: Get.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.black54,
                          Colors.black,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Buy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
