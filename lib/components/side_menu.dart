import 'package:dashboard_ui/main_screen.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("images/s1.jpg")),
            const ListType(
              name: 'Dashboard',
              pic: 'images/d1.jpg',
            ),
            const ListType(
              name: 'Transaction',
              pic: 'images/d1.jpg',
            ),
            const ListType(
              name: 'Task',
              pic: 'images/d1.jpg',
            ),
            const ListType(
              name: 'Documents',
              pic: 'images/d1.jpg',
            ),
            const ListType(
              name: 'Store',
              pic: 'images/d1.jpg',
            ),
            const ListType(
              name: 'Notification',
              pic: 'images/d1.jpg',
            ),
            const ListType(
              name: 'Profile',
              pic: 'images/d1.jpg',
            ),
            const ListType(
              name: 'Settings',
              pic: 'images/d1.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
