import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CoinItem extends StatefulWidget {
  const CoinItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.prec,
  });

  final String image;
  final String name;
  final String price;
  final double prec;

  @override
  State<CoinItem> createState() => _CoinItemState();
}

class _CoinItemState extends State<CoinItem> {
  @override
  Widget build(BuildContext context) {
    String prec = '${widget.prec.toStringAsFixed(2)}%';
    Color precColor = const Color(0xffE36772);

    if (widget.prec >= 0) {
      prec = '+$prec';
      precColor = const Color(0xff2BAC76);
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xfff5f5f5)),
        borderRadius: BorderRadius.circular(dim(15)),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(dim(12), dim(12), dim(12), dim(11)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  widget.image,
                  height: dim(32),
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/tick.png',
                  height: dim(8),
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(height: dim(9)),
            Text(
              '${widget.name}USDT',
              style: TextStyle(
                fontSize: dim(13),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: dim(9)),
            Text(
              widget.price,
              style: TextStyle(
                fontSize: dim(22),
                fontFamily: 'Rubik',
              ),
            ),
            SizedBox(height: dim(8)),
            Text(
              prec,
              style: TextStyle(
                color: precColor,
                fontSize: dim(15),
                fontFamily: 'Rubik',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
