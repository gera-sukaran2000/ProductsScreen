import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproducts/Providers/DummyData.dart';
import 'package:hexcolor/hexcolor.dart';

class Styling extends StatelessWidget {
  final DummyData singleObject;

  Styling(this.singleObject);

  @override
  Widget build(BuildContext context) {
    double getProportionateScreenHeight(double inputHeight) {
      double screenHeight = MediaQuery.of(context).size.height;
      // 812 is the layout height that designer use
      return (inputHeight / 812.0) * screenHeight;
    }

// Get the proportionate height as per screen size
    double getProportionateScreenWidth(double inputWidth) {
      double screenWidth = MediaQuery.of(context).size.width;
      // 375 is the layout width that designer use
      return (inputWidth / 375.0) * screenWidth;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      margin: EdgeInsets.only(left: 20, right: 20),
      height: getProportionateScreenHeight(150),
      width: getProportionateScreenWidth(80),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(105),
            child: AspectRatio(
              aspectRatio: 0.85,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/images/iphone.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenHeight(40),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(singleObject.title,
                  style: TextStyle(color: HexColor('#000000'), fontSize: 17)),
              Text(
                '\$${singleObject.price} \n${singleObject.color} \n${singleObject.quantity}',
                style: TextStyle(color: HexColor('#666565'), fontSize: 16),
              ),
              Transform.scale(
                alignment: Alignment.bottomLeft,
                scale: 0.8,
                child: CupertinoSwitch(value: false, onChanged: (_) {}),
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(30),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.edit_outlined),
                Spacer(),
                Icon(Icons.delete_outlined),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
