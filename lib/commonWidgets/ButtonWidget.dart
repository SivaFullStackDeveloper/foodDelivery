import 'package:flutter/material.dart';
import '../constant/ConstantColor.dart';
import '../constant/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class ButtonWidget extends StatefulWidget {
  VoidCallback press;
  var text;
  var google;

  ButtonWidget({Key? key, required this.press,this.google, this.text}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      child: Container(
        height: SizeConfig.defaultSize! * Dimens.size5,
        width: SizeConfig.defaultSize! * Dimens.size40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),

        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.google),
              Text(
                '',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: ConstantFonts.poppinsMedium,
                    fontSize: SizeConfig.defaultSize! * Dimens.size1Point8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
