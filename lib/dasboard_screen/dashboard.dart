import 'package:dashboard_ui/constant.dart';
import 'package:dashboard_ui/dasboard_screen/chart.dart';
import 'package:dashboard_ui/dasboard_screen/header.dart';
import 'package:dashboard_ui/dasboard_screen/storage_details.dart';
import 'package:dashboard_ui/dasboard_screen/storage_info.dart';

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
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('My Files',
                              style: Theme.of(context).textTheme.subtitle1),
                          ElevatedButton.icon(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding * 1.5,
                                      vertical: defaultPadding)),
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text('Add New'))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                const Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
