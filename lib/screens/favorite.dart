import 'package:flutter/material.dart';

import '../constant/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';




class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Favorite screen',
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
