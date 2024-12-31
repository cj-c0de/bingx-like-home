import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/widgets/annon_item.dart';
import 'package:bingx_like_home/widgets/app_button.dart';
import 'package:flutter/material.dart';

List<String> _titles = [
  'Hot Wallet Incident FAQ',
  'BingX Will Gradually Reopen Deposit Service from 2024-09-22',
  'BingX Adds HMSTRUSDT for Standard Futures and Perpetual Futures',
  'Notice on the Wallet Maintenance',
  'BingX Pre-Iaunchpool: Pre-HMSTR Points Will Be Redeemed for HSMTR Soon',
];
List<String> _times = [
  '2024.09.25 05:53:13',
  '2024.09.21 06:15:31',
  '2024.09.26 16:21:40',
  '2024.09.20 04:58:38',
  '2024.09.25 19:01:17',
];

class HomeAnnon extends StatelessWidget {
  const HomeAnnon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Announcement',
          style: TextStyle(
            fontSize: dim(18),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: dim(4),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (_, index) => AnnonItem(
            title: _titles[index],
            time: _times[index],
          ),
        ),
        SizedBox(
          height: dim(18),
        ),
        AppButton(
          text: 'All announcements',
          height: dim(46),
          textColor: Colors.black,
          backgroundColor: const Color(0xffF4F5F7),
        )
      ],
    );
  }
}
