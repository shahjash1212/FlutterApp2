import 'package:application1/models/food.dart';
import 'package:animations/animations.dart';
import 'package:application1/screens/details/detailscreen.dart';
import 'package:application1/screens/home/components/toptext.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:application1/screens/home/components/course.dart';
// import 'package:application1/models/food.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TopText(),
        Course(),
        SizedBox(height: 8),
        PupularDish(),
      ],
    );
  }
}

class PupularDish extends StatelessWidget {
  const PupularDish({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 20),
          child: const Text(
            "Popular now",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foods.length,
            itemBuilder: (context, index) {
              Food f = foods[index];

              return InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      foods: f,
                    ),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        height: 220,
                        width: 180,
                        child: Card(
                          shadowColor: Colors.black,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 0,
                              ),
                              const SizedBox(height: 100),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  f.discription,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(f.price.toString()),
                                    const ImageIcon(
                                      AssetImage("assets/images/chilly.png"),
                                      color: Colors.red,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Image.asset(
                        f.image,
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
