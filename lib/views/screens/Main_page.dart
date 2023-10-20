import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../attributs/attributes.dart';
import '../../controller/product_controller.dart';
import '../../res/chair.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  Product1Contoller product1contoller = Get.put(Product1Contoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 13,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Best Furniture For\nYour Room",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Get.toNamed("/CartPage");
                            },
                            icon: Icon(Icons.shopping_cart_outlined),
                          ),
                          // CircleAvatar(
                          //   child: FlutterLogo(),
                          // ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: "Search Furniture",
                          suffixIcon: Icon(Icons.filter_list_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    CarouselSlider.builder(
                      itemCount: carosellist.length,
                      itemBuilder: (context, index, _) {
                        return Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Colors.black54,
                                Colors.black,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: Get.width * 0.85,
                          margin: const EdgeInsets.all(10),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                left: 35,
                                child: Container(
                                  height: Get.height * 0.05,
                                  width: Get.width * 0.25,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${carosellist[index].Discount}",
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 75,
                                left: 40,
                                child: Text(
                                  "${carosellist[index].Name}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 40,
                                child: Row(
                                  children: [
                                    Text(
                                      "${carosellist[index].check}",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          CupertinoIcons.arrow_right,
                                          size: 20,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  left: 170,
                                  child: Container(
                                    height: Get.height * 0.2,
                                    width: Get.width * 0.4,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(
                                          "${carosellist[index].image}"),
                                    )),
                                  )),
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: 210,
                        autoPlay: true,
                        autoPlayCurve: Curves.easeIn,
                        viewportFraction: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 14,
                      ),
                      child: TabBar(
                        controller: controller,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey.shade700,
                        padding: const EdgeInsets.all(14),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: Colors.yellow.shade600,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        dividerColor: Colors.white10.withOpacity(0),
                        tabs: const [
                          Tab(
                            child: Text("Chair"),
                          ),
                          Tab(
                            child: Text("Lamp"),
                          ),
                          Tab(
                            child: Text("Table"),
                          ),
                          Tab(
                            child: Text("Sofa"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 22,
                        right: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Best Seller",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text("View All"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: TabBarView(
                  controller: controller,
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 5,
                        mainAxisExtent: 180,
                      ),
                      itemCount: productlist.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          height: Get.height * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: Get.height * 0.12,
                                        width: Get.width * 0.3,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                productlist[index].image),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        productlist[index].use,
                                        style: TextStyle(
                                            color: Colors.grey.shade700),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.003,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        productlist[index].name,
                                        style: TextStyle(
                                            color: Colors.grey.shade700),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.003,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        productlist[index].star,
                                        style: TextStyle(
                                            color: Colors.grey.shade700),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.006,
                                  ),
                                  Text(
                                    productlist[index].price,
                                    style:
                                        TextStyle(color: Colors.grey.shade700),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.006,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            product1contoller.addProduct1(
                                                data: productlist[index]);
                                          },
                                          icon: Icon(
                                            CupertinoIcons.shopping_cart,
                                          )),
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Container(
                                        height: Get.height * 0.06,
                                        width: Get.width * 0.12,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            Get.toNamed("/Details",
                                                arguments: index);
                                          },
                                          icon: const Icon(
                                            Icons.shopping_bag,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const Text("Hello"),
                    const Text("Hello"),
                    const Text("Hello"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
