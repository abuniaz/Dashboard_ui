import 'package:dashboard_ui/constant.dart';
import 'package:dashboard_ui/dasboard_screen/header.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            Row(children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.blueGrey,
                    height: 500,
                  )),
                  
              Expanded(
                  flex: 2,
                  child: Container(
                    color: secondaryColor,
                    height: 500,
                  ),),
            ])
          ],
        ),
      ),
    );
  }
}
