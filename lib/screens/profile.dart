import 'package:flutter/material.dart';

import '../constant/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';




class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Profile screen',
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
