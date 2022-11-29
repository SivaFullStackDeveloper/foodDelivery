import 'package:flutter/material.dart';

import '../constant/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';




class CustomTextBox extends StatefulWidget {
  var text1;
  var text2;
   CustomTextBox({Key? key,this.text1,this.text2}) : super(key: key);

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.text1,style: TextStyle(
            color: Colors.grey,
            fontSize: SizeConfig.defaultSize! *
                Dimens.size1Point4,
            fontFamily: ConstantFonts.poppinsMedium,),
        ),
    Text(widget.text2,style: TextStyle(
    color: Colors.grey,
    fontSize: SizeConfig.defaultSize! *
    Dimens.size1Point4,
    fontFamily: ConstantFonts.poppinsMedium,
    ),),
      ],
    );
  }
}



class CustomTextBox2 extends StatefulWidget {
  var text1;
  var text2;
  CustomTextBox2({Key? key,this.text1,this.text2}) : super(key: key);

  @override
  State<CustomTextBox2> createState() => _CustomTextBox2State();
}

class _CustomTextBox2State extends State<CustomTextBox2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.text1,style: TextStyle(
          color: Colors.black,
          fontSize: SizeConfig.defaultSize! *
              Dimens.size1Point4,
          fontFamily: ConstantFonts.poppinsMedium,),
        ),
        Text(widget.text2,style: TextStyle(
          color: Colors.black,
          fontSize: SizeConfig.defaultSize! *
              Dimens.size1Point4,
          fontFamily: ConstantFonts.poppinsMedium,
        ),),
      ],
    );
  }
}






