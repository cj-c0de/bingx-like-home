import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dim(34),
      width: dim(161),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dim(18)),
          color: const Color(0xffF4F5F7)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: dim(13),
          ),
          Image.asset(
            'assets/images/search.png',
            width: dim(13),
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: dim(15),
          ),
          Image.asset(
            'assets/images/fire.png',
            width: dim(10),
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: dim(6),
          ),
          Text(
            'XRP',
            style: TextStyle(
              color: const Color(0xffA5A6A8),
              fontSize: dim(12),
            ),
          )
        ],
      ),
    );
  }
}
