import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:test/constant/ConstantFonts.dart';
import 'package:test/res/Dimens.dart';
import 'package:test/utils/SizeConfig.dart';

import 'CartScreen.dart';
import 'cart.dart';

class ItemScreen extends StatefulWidget {
  var imageUrl;
  var name;
  var price;

  ItemScreen({Key? key,  this.imageUrl, this.name, this.price})
      : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * Dimens.size2,
                  bottom: SizeConfig.defaultSize! * Dimens.size2,
                  left: SizeConfig.defaultSize! * Dimens.size2,
                  right: SizeConfig.defaultSize! * Dimens.size2,
                ),
                child: Hero(
                    tag: 'dash',
                    child: Image.network(
                      widget.imageUrl,
                      height: SizeConfig.defaultSize! * Dimens.size20,
                    )),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    elevation: 50,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize! * Dimens.size4,
                          bottom: SizeConfig.defaultSize! * Dimens.size2,
                          left: SizeConfig.defaultSize! * Dimens.size2,
                          right: SizeConfig.defaultSize! * Dimens.size2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.name.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.defaultSize! *
                                        Dimens.size1Point6,
                                    fontFamily: ConstantFonts.poppinsBold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.alarm,
                                      color: Colors.redAccent,
                                    ),
                                    Text(
                                      '10 - 15 mins',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: SizeConfig.defaultSize! *
                                            Dimens.size1Point1,
                                        fontFamily: ConstantFonts.poppinsMedium,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize! * Dimens.size2,
                              ),
                              child: Text(
                                'savory chicken and rice dish that includes layers of chicken, rice, and aromatics that are steamed together.',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: SizeConfig.defaultSize! *
                                      Dimens.size1Point1,
                                  fontFamily: ConstantFonts.poppinsMedium,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize! * Dimens.size2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Toppings For You',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.defaultSize! *
                                          Dimens.size1Point5,
                                      fontFamily: ConstantFonts.poppinsMedium,
                                    ),
                                  ),
                                  Text(
                                    'Clear',
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: SizeConfig.defaultSize! *
                                          Dimens.size1Point5,
                                      fontFamily: ConstantFonts.poppinsMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.defaultSize! * Dimens.size2,
                                top: SizeConfig.defaultSize! * Dimens.size2,
                                right: SizeConfig.defaultSize! * Dimens.size2,
                              ),
                              child: Container(
                                height: SizeConfig.defaultSize! * Dimens.size10,
                                child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: food.length,
                                    itemBuilder: (context, i) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Material(
                                            elevation: 2,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    SizeConfig.defaultSize! *
                                                        Dimens.size2)),
                                            child: Stack(
                                              clipBehavior: Clip.none,
                                              alignment: AlignmentDirectional
                                                  .topCenter,
                                              fit: StackFit.loose,
                                              children: [
                                                Container(
                                                  width:
                                                      SizeConfig.defaultSize! *
                                                          Dimens.size10,
                                                  height:
                                                      SizeConfig.defaultSize! *
                                                          Dimens.size15,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(
                                                              SizeConfig
                                                                      .defaultSize! *
                                                                  Dimens
                                                                      .size2))),
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius: BorderRadius
                                                              .all(Radius.circular(
                                                                  SizeConfig
                                                                          .defaultSize! *
                                                                      Dimens
                                                                          .size2)),
                                                          child: Image.network(
                                                            addings[i],
                                                            width: SizeConfig
                                                                    .defaultSize! *
                                                                Dimens.size6,
                                                            height: SizeConfig
                                                                    .defaultSize! *
                                                                Dimens.size6,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: -0,
                                                  left: 80,
                                                  child: Container(
                                                    height: SizeConfig
                                                            .defaultSize! *
                                                        Dimens.size2,

                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(SizeConfig
                                                                .defaultSize! *
                                                            Dimens.size2),
                                                      ),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                            onTap: () {},
                                                            child: Icon(
                                                                Icons.add)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize! * Dimens.size2,
                                left: SizeConfig.defaultSize! * Dimens.size2,
                                right: SizeConfig.defaultSize! * Dimens.size2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Total Price',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: SizeConfig.defaultSize! *
                                              Dimens.size1Point1,
                                          fontFamily:
                                              ConstantFonts.poppinsMedium,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$',
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize:
                                                  SizeConfig.defaultSize! *
                                                      Dimens.size1Point4,
                                              fontFamily:
                                                  ConstantFonts.poppinsMedium,
                                            ),
                                          ),
                                          Text(
                                            total().toString()+'0',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  SizeConfig.defaultSize! *
                                                      Dimens.size1Point8,
                                              fontFamily:
                                                  ConstantFonts.poppinsBold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => CartScreen(
                                        total: tot,
                                        url: widget.imageUrl,
                                        price: widget.price,
                                        number: number,
                                        name: widget.name,

                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(
                                                SizeConfig.defaultSize! *
                                                    Dimens.size1Point2),
                                            bottomLeft: Radius.circular(
                                                SizeConfig.defaultSize! *
                                                    Dimens.size1Point2),
                                            bottomRight: Radius.circular(
                                                SizeConfig.defaultSize! *
                                                    Dimens.size1Point2),
                                          )),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize! *
                                              Dimens.size1,
                                          bottom: SizeConfig.defaultSize! *
                                              Dimens.size1,
                                          left: SizeConfig.defaultSize! *
                                              Dimens.size2,
                                          right: SizeConfig.defaultSize! *
                                              Dimens.size2,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shopping_cart,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              'Go To Cart',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    SizeConfig.defaultSize! *
                                                        Dimens.size1Point2,
                                                fontFamily:
                                                    ConstantFonts.poppinsBold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    right: 50,
                    child: Container(
                      height: SizeConfig.defaultSize! * Dimens.size4,
                      width: SizeConfig.defaultSize! * Dimens.size8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              SizeConfig.defaultSize! * Dimens.size2),
                        ),
                        color: Colors.orangeAccent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                              onTap: () {
                                decrease();
                              },
                              child: Icon(Icons.remove)),
                          Text(number > 9
                              ? number.toString()
                              : '0' + number.toString()),
                          InkWell(
                              onTap: () {
                                increase();
                              },
                              child: Icon(Icons.add)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 50,
                    child: Container(
                      height: SizeConfig.defaultSize! * Dimens.size4,
                      width: SizeConfig.defaultSize! * Dimens.size6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              SizeConfig.defaultSize! * Dimens.size2),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 1,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 1,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: SizeConfig.defaultSize! * Dimens.size1,
                              fontFamily: ConstantFonts.poppinsMedium,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  var number = 1;

  increase() {
    setState(() {
      number++;
    });
  }

  var food = [
    'Fast Food',
    'Fruits',
    'Burgers',
    'Pizza',
    'Biryani',
    'Noodles',
    'Veg',
  ];
  var addings = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHGafq9ZMAlaVaDxiI4Rrx8mdyZwlucpyS9PIs-WS&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHGafq9ZMAlaVaDxiI4Rrx8mdyZwlucpyS9PIs-WS&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHGafq9ZMAlaVaDxiI4Rrx8mdyZwlucpyS9PIs-WS&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHGafq9ZMAlaVaDxiI4Rrx8mdyZwlucpyS9PIs-WS&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHGafq9ZMAlaVaDxiI4Rrx8mdyZwlucpyS9PIs-WS&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHGafq9ZMAlaVaDxiI4Rrx8mdyZwlucpyS9PIs-WS&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROHGafq9ZMAlaVaDxiI4Rrx8mdyZwlucpyS9PIs-WS&s',
  ];

  var tot ;
  total() {
    var a = double.parse(widget.price);
    var b = a * number;

    var d = b.toString();
    tot = b;
    return d;
  }

  decrease() {
    setState(() {
      number--;
      if (number < 1) {
        setState(() {
          number = 1;
        });
      }
    });
  }
}
