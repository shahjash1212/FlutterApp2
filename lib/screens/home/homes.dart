import 'package:application1/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ImageIcon(
              AssetImage("assets/images/ring.png"),
              color: Colors.white,
              size: 24,
            ),
            ImageIcon(
              AssetImage("assets/images/search.png"),
              color: Colors.white,
              size: 24,
            ),
            ImageIcon(
              AssetImage("assets/images/like.png"),
              color: Colors.white,
              size: 24,
            ),
            ImageIcon(
              AssetImage("assets/images/list.png"),
              color: Colors.white,
              size: 24,
            )
          ],
        ),
      )),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        iconSize: 40.0,
        padding: const EdgeInsets.only(left: 20),
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.only(right: 20),
          iconSize: 40.0,
          icon: SvgPicture.asset("assets/icons/avatar-svgrepo-com.svg"),
        ),
      ],
    );
  }
}
