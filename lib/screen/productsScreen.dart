import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myproducts/Providers/DummyData.dart';
import 'package:myproducts/widgets/Styling.dart';
import 'package:provider/provider.dart';

class MyProducts extends StatefulWidget {
  @override
  _MyProductsState createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  @override
  Widget build(BuildContext context) {
    final productsList = Provider.of<ProductsList>(context).products;
    final value = Provider.of<ProductsList>(context).totalCost;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: HexColor('#EFEFEF'),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Text(
                  'My Products',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  productsList.length.toString(),
                  style: TextStyle(
                      color: HexColor('#666565').withOpacity(0.8),
                      fontSize: 24),
                ),
                Spacer(),
                Text(
                  'Value \$ $value',
                  style: TextStyle(
                      fontSize: 25,
                      color: HexColor('#666565').withOpacity(0.8)),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return Styling(productsList[index]);
              },
              itemCount: productsList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 15),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
        backgroundColor: HexColor('#2ECC71'),
      ),
    );
  }
}
