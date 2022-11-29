import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:test/constant/ConstantFonts.dart';
import 'package:test/res/Dimens.dart';
import 'package:test/utils/SizeConfig.dart';

import '../constant/ConstantColor.dart';
import 'itemScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(
                          SizeConfig.defaultSize! * Dimens.size1)),
                      elevation: 10,
                      child: Container(
                        width: SizeConfig.defaultSize! * Dimens.size4,
                        height: SizeConfig.defaultSize! * Dimens.size4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                SizeConfig.defaultSize! * Dimens.size2))),
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Text(
                      'Search Food',
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize! * Dimens.size2,
                        fontFamily: ConstantFonts.poppinsBold,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(
                          SizeConfig.defaultSize! * Dimens.size1)),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyEjF4HukEWIDgAXR2rAxtMfIXWWrSRVFG48WzIIPS3lqpKon-Nm6ffudv4osqRtK7Ldg&usqp=CAU',
                        width: SizeConfig.defaultSize! * Dimens.size4,
                        height: SizeConfig.defaultSize! * Dimens.size4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * Dimens.size2,
                  left: SizeConfig.defaultSize! * Dimens.size2,
                  right: SizeConfig.defaultSize! * Dimens.size2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.all(Radius.circular(
                            SizeConfig.defaultSize! * Dimens.size1)),
                        child: TextFormField(

                          cursorColor: ConstantColor.primaryColor,
                          decoration: InputDecoration(
                            hintText: 'Healthy Food',

                            prefixIcon: Icon(
                              Icons.search, color: ConstantColor.primaryColor,),

                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(
                                    SizeConfig.defaultSize! * Dimens.size1))),

                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(
                                    SizeConfig.defaultSize! * Dimens.size1))),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: 10
                    ),

                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(
                          SizeConfig.defaultSize! * Dimens.size1)),
                      elevation: 10,
                      child: Container(
                        width: SizeConfig.defaultSize! * Dimens.size4,
                        height: SizeConfig.defaultSize! * Dimens.size4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                SizeConfig.defaultSize! * Dimens.size2))),
                        child: Icon(Icons.filter_list),
                      ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * Dimens.size5,
                  left: SizeConfig.defaultSize! * Dimens.size2,
                  right: SizeConfig.defaultSize! * Dimens.size2,
                ),
                child: Container(
                  height: SizeConfig.defaultSize! * Dimens.size6,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: food.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (temp.contains(food[i])) {
                                  temp.remove(food[i]);
                                } else {
                                  temp.clear();
                                  temp.add(food[i]);
                                }
                              });
                            },
                            child: Material(
                              elevation: 2,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  SizeConfig.defaultSize! * Dimens.size2)),
                              child: Container(
                                width: SizeConfig.defaultSize! * Dimens.size10,
                                height: SizeConfig.defaultSize! * Dimens.size4,
                                decoration: BoxDecoration(
                                    color: temp.contains(food[i]) ? Colors
                                        .orangeAccent : Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            SizeConfig.defaultSize! *
                                                Dimens.size2))),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                SizeConfig.defaultSize! *
                                                    Dimens.size6)),
                                        child: Image.network(
                                          url[i],
                                          width: SizeConfig.defaultSize! *
                                              Dimens.size4,
                                          height: SizeConfig.defaultSize! *
                                              Dimens.size4,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(food[i].toString(), style: TextStyle(
                                        color: temp.contains(food[i]) ? Colors
                                            .white : Colors.black,
                                        fontSize: SizeConfig.defaultSize! *
                                            Dimens.size1,
                                        fontFamily: ConstantFonts.poppinsBold,

                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * Dimens.size1,
                  left: SizeConfig.defaultSize! * Dimens.size2,
                  right: SizeConfig.defaultSize! * Dimens.size2,
                ),
                child: SizedBox(
                  height: SizeConfig.defaultSize! * Dimens.size22,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: food.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Get.to(() =>
                                  ItemScreen(
                                    imageUrl:url[i],
                                    name:g[i],
                                    price:price[i],

                                  ));
                            },
                            child:  Material(
                              elevation: 2,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  SizeConfig.defaultSize! * Dimens.size2)),
                              child: Container(
                                width: SizeConfig.defaultSize! * Dimens.size16,
                                height: SizeConfig.defaultSize! * Dimens.size10,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            SizeConfig.defaultSize! *
                                                Dimens.size2))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                SizeConfig.defaultSize! *
                                                    Dimens.size1)),
                                        child: Hero(
                                          tag: 'dash${i}',
                                          child:Image.network(
                                          url[i],
                                          height: SizeConfig.defaultSize! *
                                              Dimens.size10,
                                        ),
                                      ),),
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.only(
                                        left: SizeConfig.defaultSize! * Dimens.size2,
                                        right: SizeConfig.defaultSize! * Dimens.size2,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(
                                            g[i].toString(), style: TextStyle(
                                            color: Colors.black,
                                            fontSize: SizeConfig.defaultSize! *
                                                Dimens.size1,
                                            fontFamily: ConstantFonts
                                                .poppinsBold,

                                          ),),
                                          Text(
                                            a[i].toString(), style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: SizeConfig.defaultSize! *
                                                Dimens.size1,
                                            fontFamily: ConstantFonts
                                                .poppinsBold,

                                          ),),
                                          Row(

                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Text('\$'+price[i].toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: SizeConfig
                                                      .defaultSize! *
                                                      Dimens.size1Point5,
                                                  fontFamily: ConstantFonts
                                                      .poppinsBold,

                                                ),),
                                              IconButton(onPressed: () {
                                                setState(() {

                                                });
                                              },
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                   ))
                                            ],
                                          ),

                                        ],
                                      ),),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),),

              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize! * Dimens.size2,
                  left: SizeConfig.defaultSize! * Dimens.size2,
                  right: SizeConfig.defaultSize! * Dimens.size2,
                ),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Favourite Restaurants', style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.defaultSize! * Dimens.size1Point5,
                      fontFamily: ConstantFonts.poppinsMedium,

                    ),),
                    Text('See all', style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.defaultSize! * Dimens.size1Point5,
                      fontFamily: ConstantFonts.poppinsMedium,

                    ),),

                  ],
                ),),


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
                              borderRadius: BorderRadius.all(Radius.circular(
                                  SizeConfig.defaultSize! * Dimens.size2)),
                              child: Container(
                                width: SizeConfig.defaultSize! * Dimens.size18,
                                height: SizeConfig.defaultSize! * Dimens.size15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            SizeConfig.defaultSize! *
                                                Dimens.size2))),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                SizeConfig.defaultSize! *
                                                    Dimens.size6)),
                                        child: Image.network(
                                          url[i],
                                          width: SizeConfig.defaultSize! *
                                              Dimens.size6,
                                          height: SizeConfig.defaultSize! *
                                              Dimens.size6,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Container(
                                            width: 100,
                                            child: Text(resturent[i].toString(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig
                                                    .defaultSize! *
                                                    Dimens.size1Point4,
                                                fontFamily: ConstantFonts
                                                    .poppinsMedium,

                                              ),


                                            ),
                                          ),
                                          RatingBar.builder(
                                            itemSize: 14,
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,

                                            itemBuilder: (context, _) =>
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          Text(area[i].toString(),
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: SizeConfig
                                                  .defaultSize! * Dimens.size1,
                                              fontFamily: ConstantFonts
                                                  .poppinsMedium,

                                            ),),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),),


            ],
          ),
        ),
      ),
    );
  }

  var url = [
    'https://thumbs.dreamstime.com/b/fast-food-concept-greasy-fried-restaurant-take-out-as-onion-rings-burger-hot-dogs-fried-chicken-french-fries-31114163.jpg',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/assortment-of-colorful-ripe-tropical-fruits-top-royalty-free-image-995518546-1564092355.jpg',
    'https://www.chicken.ca/wp-content/uploads/2013/05/Moist-Chicken-Burgers-1180x580.jpg',
    'https://www.chicken.ca/wp-content/uploads/2013/05/Moist-Chicken-Burgers-1180x580.jpg',
    'https://www.chicken.ca/wp-content/uploads/2013/05/Moist-Chicken-Burgers-1180x580.jpg',
    'https://www.chicken.ca/wp-content/uploads/2013/05/Moist-Chicken-Burgers-1180x580.jpg',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/assortment-of-colorful-ripe-tropical-fruits-top-royalty-free-image-995518546-1564092355.jpg',

  ];
  var temp = [];
  var food = [
    'Fast Food',
    'Fruits',
    'Burgers',
    'Pizza',
    'Biryani',
    'Noodles',
    'Veg',
  ];

  var resturent = [
    'FoodCave resturant',
    'KFC',
    'Dominos',
    'PizzaHut',
    'Mehfil Biryani',
    'Paradise',
    'Green Bawarchi',
  ];


  var g = [
    'Sandwich',
    'grilled chicken',
    'spicy noodles',
    'chiken Dum Biryani',
    ' Gongoora Biryani',
    'Egg Noodles',
    'Veg Sandwich',
  ];
  var a = [
    'spicy mutton',
    'fresh tomato',
    'spicy mutton',
    'fresh tomato',
    'spicy mutton',
    'fresh tomato',
    'spicy mutton',
  ];
  var area = [
    'Hyderbad',
    'Hyderbad',
    'Hyderbad',
    'Hyderbad',
    'Hyderbad',
    'Hyderbad',
    'Hyderbad',
  ];

  var price = [
    '36.00',
    '76.00',
    '46.00',
    '306.00',
    '160.00',
    '136.00',
    '136.00',
  ];
}
