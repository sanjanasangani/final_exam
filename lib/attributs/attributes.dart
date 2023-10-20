import 'package:flutter/material.dart';


class  CarsoelClass{
  String Discount;
  String Name;
  String? image;
  String check;

  CarsoelClass({required this.Discount,required this.Name,this.image,required this.check});
}

List<CarsoelClass> carosellist= [
CarsoelClass(Discount: "20% Off", Name: "Best Deals on\nChair", check: "Check it out",image: "assets/images/download-removebg-preview (2).png"),
CarsoelClass(Discount: "30% Off", Name: "Best Deals on\nLamp", check: "Check it out",image: "assets/images/images-removebg-preview (14).png"),
CarsoelClass(Discount: "35% Off", Name: "Best Deals on\nTable", check: "Check it out",image: "assets/images/images__1_-removebg-preview (1).png"),
];