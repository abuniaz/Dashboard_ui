import 'package:flutter/material.dart';

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
                DrawerHeader(child: Image.asset("")),
                ListTile(
                  onTap: () {},
                  title: const Text('Dashboard'),
                )
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ))
        ],
      )),
    );
  }
}
