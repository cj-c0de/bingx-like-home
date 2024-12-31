import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(radius: dim(17), backgroundColor: const Color(0xffD9D9D9)),
        SizedBox(
          width: dim(10),
        ),
        const AppSearchBar(),
        SizedBox(
          width: dim(10),
        ),
        barIcon('assets/images/support.png'),
        barIcon('assets/images/scan.png'),
        Badge(
            label: Text(
              '16',
              style: TextStyle(
                fontSize: dim(9),
                letterSpacing: 0,
              ),
            ),
            largeSize: dim(16),
            smallSize: dim(16),
            offset: Offset(0, dim(-6)),
            alignment: Alignment.topRight,
            backgroundColor: const Color(0xffFB0303),
            child: barIcon('assets/images/notif.png')),
      ],
    );
  }
}

Widget barIcon(String image) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: dim(9)),
    child: Image.asset(
      image,
      width: dim(17),
      height: dim(17),
      fit: BoxFit.contain,
    ),
  );
}
