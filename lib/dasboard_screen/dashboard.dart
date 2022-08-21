import 'package:dashboard_ui/constant.dart';
import 'package:dashboard_ui/dasboard_screen/header.dart';
import 'package:fl_chart/fl_chart.dart';
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
                        SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                PieChart(PieChartData(
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 70,
                                    startDegreeOffset: -90,
                                    sections: paiChartSelectionDatas)),
                                Positioned.fill(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '29.1',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4!
                                          .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    const Text('0f 128GB')
                                  ],
                                ))
                              ],
                            ))
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

List<PieChartSectionData> paiChartSelectionDatas = [
  PieChartSectionData(
      value: 25, color: primaryColor, showTitle: false, radius: 25),
  PieChartSectionData(
      value: 20, color: const Color(0xFF26E5FF), showTitle: false, radius: 22),
  PieChartSectionData(
      value: 10, color: const Color(0xFFFFCF26), showTitle: false, radius: 19),
  PieChartSectionData(
      value: 25, color: const Color(0xFFEE2727), showTitle: false, radius: 16),
  PieChartSectionData(
      value: 25,
      color: primaryColor.withOpacity(0.1),
      showTitle: false,
      radius: 13),
];
