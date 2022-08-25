import 'package:dashboard_ui/constant.dart';
import 'package:dashboard_ui/dasboard_screen/chart.dart';
import 'package:dashboard_ui/dasboard_screen/storage_info.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            title: 'Documents files',
            pic: 'images/s1.jpg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Media files',
            pic: 'images/s1.jpg',
            amountOfFiles: '15.3GB',
            numOfFiles: 1528,
          ),
          StorageInfoCard(
            title: 'Documents files',
            pic: 'images/s1.jpg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Media files',
            pic: 'images/s1.jpg',
            amountOfFiles: '15.3GB',
            numOfFiles: 1528,
          ),
        ],
      ),
    );
  }
}
