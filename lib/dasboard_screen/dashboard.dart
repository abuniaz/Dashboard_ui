import 'package:dashboard_ui/constant.dart';
import 'package:dashboard_ui/dasboard_screen/chart.dart';
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
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.blueGrey,
                    height: 500,
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    height: 500,
                    decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        const Text(
                          'Storage Details',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        const Chart(),
                        Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: primaryColor.withOpacity(0.15)),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(defaultPadding))),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset('images/s1.jpg'),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Documents files',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      '1329 Files',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(color: Colors.white70),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
