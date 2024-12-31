import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomePositionBar extends StatefulWidget {
  const HomePositionBar({super.key});

  @override
  State<HomePositionBar> createState() => _HomePositionBarState();
}

class _HomePositionBarState extends State<HomePositionBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dim(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'No Open Position',
            style: TextStyle(
              fontSize: dim(14),
              color: const Color(0xff979797),
            ),
          ),
          Row(
            children: [
              Text(
                'Trade',
                style: TextStyle(
                  fontSize: dim(14),
                  color: const Color(0xff004BF6),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Image.asset(
                'assets/images/arrow_right.png',
                width: dim(8),
                fit: BoxFit.contain,
              )
            ],
          )
        ],
      ),
    );
  }
}
