import 'package:flutter/material.dart';
import '../constant/ConstantColor.dart';

class CustomFormField extends StatefulWidget {
  var controller;
  var hinttext;

  CustomFormField({Key? key, this.controller, this.hinttext}) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ConstantColor.primaryColor,
      controller: widget.controller,
      decoration: InputDecoration(
          hintText: widget.hinttext,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.primaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.primaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )),
    );
  }
}
