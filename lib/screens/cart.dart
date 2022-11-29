import 'package:flutter/material.dart';

import '../constant/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';




class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'cart screen',
              style: TextStyle(
                fontSize: SizeConfig.defaultSize! * Dimens.size2,
                fontFamily: ConstantFonts.poppinsBold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
