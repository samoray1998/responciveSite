import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zahra_center/Shared/Utils/Lists.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      color: Color.fromRGBO(22, 40, 120, 1),
      width: screenSize.width * 0.18,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: screenSize.height,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Zahra Center',
                style: GoogleFonts.satisfy(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          // ListTile(
          //   trailing: IconButton(
          //       onPressed: () {},
          //       hoverColor: Colors.red,
          //       icon: Icon(
          //         Icons.menu_open,
          //         color: Colors.grey[200],
          //       )),
          // ),
          Expanded(
              child: ListView.builder(
                  itemCount: drawerTings.length,
                  itemBuilder: (_, index) {
                    return Container(
                        child: ListTile(
                      leading: Icon(Icons.dashboard_outlined),
                      title: Text(
                        drawerTings[index],
                        style: TextStyle(color: Colors.grey[200]),
                      ),
                    ));
                  }))
        ],
      ),
    );
  }
}
