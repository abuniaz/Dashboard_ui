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
            child: Container(
              color: Colors.black87,
              child: Column(
                children: [
                  DrawerHeader(child: Image.asset("images/s1.jpg")),
                  const ListType(
                    name: 'Dashboard',
                    pic: 'images/d1.jpg',
                  ),
                  const ListType(
                    name: 'Dashboard',
                    pic: 'images/d1.jpg',
                  ),
                  const ListType(
                    name: 'Dashboard',
                    pic: 'images/d1.jpg',
                  ),
                ],
              ),
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

class ListType extends StatelessWidget {
  final String name;
  final String pic;
  const ListType({
    Key? key,
    required this.name,
    required this.pic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image.asset(
        pic,
        height: 16,
      ),
      title: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
