import 'package:application1/models/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Food foods;

  const DetailScreen({Key? key, required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BackButton(
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.link_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 300,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                        ),
                        Text(
                          foods.title,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.timer),
                                Text(" 30 min"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.fireplace),
                                Text(" 3000 calories"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star),
                                Text(" 4.5"),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          foods.longdis,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey[300]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(Icons.add),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Icon(Icons.remove),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      "Add to Cart",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      "\$ ${foods.price.toString()}",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Image.asset(foods.image, height: 300),
            ),
          ],
        ),
      ),
    );
  }
}
