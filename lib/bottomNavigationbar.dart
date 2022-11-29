import 'package:flutter/material.dart';
import 'package:test/screens/cart.dart';
import 'package:test/screens/favorite.dart';
import 'package:test/screens/homepage.dart';
import 'package:test/screens/profile.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const Profile(),
    const Favorite(),
    const Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ?
                            const Icon(
                              Icons.widgets_outlined,
                              color: Colors.orangeAccent,
                              size: 25,
                            )
                    : const Icon(
                        Icons.widgets_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.person,
                        color: Colors.orangeAccent,
                        size: 25,
                      )
                    : const Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: 25,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.orangeAccent,
                        size: 25,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 25,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.shopping_bag,
                        color: Colors.orangeAccent,
                        size: 25,
                      )
                    : const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
              ),
            ],
          ),
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
