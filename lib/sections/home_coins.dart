import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/widgets/coin_item.dart';
import 'package:flutter/material.dart';

class HomeCoins extends StatefulWidget {
  const HomeCoins({super.key});

  @override
  State<HomeCoins> createState() => _HomeCoinsState();
}

List<String> _coins = ['BTC', 'ETH', 'TIA', 'WIF', 'SUI', 'SOL'];
List<String> _prices = [
  '63,826.7',
  '2,646.59',
  '6.2329',
  '2.0376',
  '1.63887',
  '148.144'
];
List<double> _preces = [1, -0.57, 9.79, 17.9, 5.39, 3.61];

class _HomeCoinsState extends State<HomeCoins> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dim(460),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 1.04,
        mainAxisSpacing: dim(10),
        crossAxisSpacing: dim(10),
        children: List.generate(
            6,
            (index) => Padding(
                  padding: EdgeInsets.only(bottom: dim(2)),
                  child: CoinItem(
                    image: 'assets/images/coin${index + 1}.png',
                    name: _coins[index],
                    price: _prices[index],
                    prec: _preces[index],
                  ),
                )),
      ),
    );
  }
}
