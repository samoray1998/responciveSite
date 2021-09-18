import 'package:flutter/material.dart';

import 'Components/HomeViewComponents/HomeView.dart';
import 'Components/drawerComponent/Drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size(screenSize.width, 70),
      //   child: Container(
      //     color: Colors.red,
      //   ),
      // ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Row(
          children: [
            MyDrawer(),
            Expanded(
              child: Container(
                child: HomeView(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
