import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  Course({Key? key}) : super(key: key);
  int selectCourse = 0;

  @override
  State<Course> createState() => _CourseState();
}

List<String> course = ["Main", "Soups", "Salads", "Drinks", "Sides", "Snack"];

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: course.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 1.0,
                        offset: Offset(-1, 3),
                        color: Colors.grey),
                  ],
                ),
                child: Image.asset(
                  "assets/images/dis1.png",
                ),
              ),
              const SizedBox(height: 8),
              Text(
                course[index],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
