import 'package:final_exam/views/screens/Main_page.dart';
import 'package:final_exam/views/screens/cart_page.dart';
import 'package:final_exam/views/screens/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/product_controller.dart';

void main(){
  runApp(

    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      initialRoute: '/Mainpage',

      getPages: [
        GetPage(name:'/Mainpage' ,page:() => MainPage(), ),
        GetPage(name:'/Details' ,page:() => Details_page(), ),
        GetPage(name:'/CartPage' ,page:() => CartPage(), ),
      ],
    ),
  );
}

