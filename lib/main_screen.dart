import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePge extends StatelessWidget {
  const MyHomePge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                DrawerHeader(child: Image.asset("images/s1.jpg")),
                ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "images/d1.jpg",
                    height: 16,
                  ),
                  title: const Text('Dashboard'),
                )
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue,
              ))
        ],
      )),
    );
  }
}
