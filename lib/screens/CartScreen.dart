import 'package:flutter/material.dart';

import '../commonWidgets/customTextBox.dart';
import '../constant/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';



class CartScreen extends StatefulWidget {
  var url;
  var name ;
  var number;
  var price;
  var total ;
   CartScreen({Key? key,required this.url,required this.name,required this.number,required this.total,required this.price}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * Dimens.size2,
                left: SizeConfig.defaultSize! * Dimens.size2,
                right: SizeConfig.defaultSize! * Dimens.size2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(
                          SizeConfig.defaultSize! * Dimens.size1)),
                      elevation: 10,
                      child: Container(
                        width: SizeConfig.defaultSize! * Dimens.size4,
                        height: SizeConfig.defaultSize! * Dimens.size4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                SizeConfig.defaultSize! * Dimens.size2))),
                        child: Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,

                  ),
                ],
              ),
            ),

      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize! * Dimens.size2,
              left: SizeConfig.defaultSize! * Dimens.size2,
              right: SizeConfig.defaultSize! * Dimens.size2,
            ),
            child:Text('My',
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.defaultSize! *
                    Dimens.size3,
                fontFamily: ConstantFonts.poppinsBold,
              ),),),

          Padding(
            padding: EdgeInsets.only(

              left: SizeConfig.defaultSize! * Dimens.size2,
              right: SizeConfig.defaultSize! * Dimens.size2,
            ),
            child:Text('Cart List',
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.defaultSize! *
                    Dimens.size3,
                fontFamily: ConstantFonts.poppinsRegular,
              ),),),

          Padding(
            padding: EdgeInsets.only(

              left: SizeConfig.defaultSize! * Dimens.size2,
              top: SizeConfig.defaultSize! * Dimens.size2,
              right: SizeConfig.defaultSize! * Dimens.size2,
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(
                      Radius.circular(
                          SizeConfig.defaultSize! *
                              Dimens.size6)),
                  child: Image.network(
                    widget.url,
                    width: SizeConfig.defaultSize! *
                        Dimens.size6,
                    height: SizeConfig.defaultSize! *
                        Dimens.size6,
                    fit: BoxFit.cover,
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,
                  style: TextStyle(
    color: Colors.black,
    fontSize: SizeConfig.defaultSize! *
    Dimens.size1Point8,
    fontFamily: ConstantFonts.poppinsMedium,
    ),),
                    Row(
                      children: [
                        Text(widget.price.toString()  ,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.defaultSize! *
                                Dimens.size1Point8,
                            fontFamily: ConstantFonts.poppinsMedium,
                          ),),
                        Text(' x'+widget.number.toString(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: SizeConfig.defaultSize! *
                                Dimens.size1Point8,
                            fontFamily: ConstantFonts.poppinsMedium,
                          ),),
                      ],
                    ),

                  ],
                ),
    SizedBox(
      width: 40,
    ),

    Container(
    height: SizeConfig.defaultSize! * Dimens.size5,
    width: SizeConfig.defaultSize! * Dimens.size3,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(
    Radius.circular(
    SizeConfig.defaultSize! * Dimens.size1),
    ),
    color: Colors.black,
    ),
    child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {

                        },
                        child: Icon(Icons.remove,color: Colors.white,)),

                    InkWell(
                        onTap: () {

                        },
                        child: Icon(Icons.add,color: Colors.white,)),
                  ],
                ),),
              ],
            ),
          ),
        ],
      ),

      Padding(
        padding: EdgeInsets.only(

          left: SizeConfig.defaultSize! * Dimens.size2,
          bottom: SizeConfig.defaultSize! * Dimens.size2,
          right: SizeConfig.defaultSize! * Dimens.size2,
          top: SizeConfig.defaultSize! * Dimens.size2,
        ),child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.disc_full_outlined,color: Colors.redAccent,),
                Text('Do you have any discount code?'  ,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.defaultSize! *
                        Dimens.size1Point4,
                    fontFamily: ConstantFonts.poppinsMedium,
                  ),),

              ],
            ),),


            Expanded(
              child: Material(
                elevation: 40,
                borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.defaultSize! *
                      Dimens.size1Point2)
                ),
                child: Container(

                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize! *
                            Dimens.size1Point2)
                  ),
                ),
                  child: Column(
                    children: [
                  Padding(
                  padding: EdgeInsets.only(

                  left: SizeConfig.defaultSize! * Dimens.size2,

                    right: SizeConfig.defaultSize! * Dimens.size2,
                    top: SizeConfig.defaultSize! * Dimens.size2,
                  ),child:CustomTextBox(
                        text1: 'Subtotal',
                        text2: widget.total.toString()+'0',
                      ),
                  ),
                      Padding(
                  padding: EdgeInsets.only(

                  left: SizeConfig.defaultSize! * Dimens.size2,

                    right: SizeConfig.defaultSize! * Dimens.size2,
                    top: SizeConfig.defaultSize! * Dimens.size2,
                  ),child:CustomTextBox(
                        text1: 'Est.Tax',
                        text2: '2.00',
                      ),
                  ),
                      Padding(
                  padding: EdgeInsets.only(

                  left: SizeConfig.defaultSize! * Dimens.size2,

                    right: SizeConfig.defaultSize! * Dimens.size2,
                    top: SizeConfig.defaultSize! * Dimens.size2,
                  ),child:CustomTextBox(
                        text1: 'Delivery',
                        text2: 'Free',
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(

                      left: SizeConfig.defaultSize! * Dimens.size2,

                      right: SizeConfig.defaultSize! * Dimens.size2,
                      top: SizeConfig.defaultSize! * Dimens.size2,
                    ),child:Text('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ')),
                      Padding(
                  padding: EdgeInsets.only(

                  left: SizeConfig.defaultSize! * Dimens.size2,

                    right: SizeConfig.defaultSize! * Dimens.size2,
                    top: SizeConfig.defaultSize! * Dimens.size2,
                  ),child:CustomTextBox2(
                        text1: 'Total',
                        text2: '\$${widget.total+2}0',
                      ),
                  ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.only(

                            left: SizeConfig.defaultSize! * Dimens.size2,
                            right: SizeConfig.defaultSize! * Dimens.size2,
                            top: SizeConfig.defaultSize! * Dimens.size2,
                          ),child:Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize! * Dimens.size1))
                        ),
                        height: SizeConfig.defaultSize! * Dimens.size5,
                        width: SizeConfig.defaultSize! * Dimens.size40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Checkout'  ,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.defaultSize! *
                                    Dimens.size1Point4,
                                fontFamily: ConstantFonts.poppinsMedium,
                              ),),
                            Icon(Icons.arrow_forward_outlined),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      )
                      ),
                    ],
                  )),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
