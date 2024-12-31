import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/widgets/app_button.dart';
import 'package:flutter/material.dart';

class HomeBalance extends StatefulWidget {
  const HomeBalance({super.key});

  @override
  State<HomeBalance> createState() => _HomeBalanceState();
}

class _HomeBalanceState extends State<HomeBalance> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Assets(USDT)',
              style: TextStyle(
                fontSize: dim(14),
                color: const Color(0xff555555),
              ),
            ),
            SizedBox(
              height: dim(16),
            ),
            Text(
              '8.99',
              style: TextStyle(
                fontSize: dim(27),
                fontFamily: 'Rubik',
                color: const Color(0xff090909),
              ),
            ),
            SizedBox(
              height: dim(16),
            ),
            Text(
              '≈ \$8.99',
              style: TextStyle(
                fontSize: dim(16),
                fontFamily: 'Rubik',
                color: const Color(0xffB0B0B0),
              ),
            ),
          ],
        ),
        const AppButton(text: 'Deposit'),
      ],
    );
  }
}
