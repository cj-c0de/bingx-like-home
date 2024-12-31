import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/widgets/grid_item.dart';
import 'package:flutter/material.dart';

class HomeShortcuts extends StatefulWidget {
  const HomeShortcuts({super.key});

  @override
  State<HomeShortcuts> createState() => _HomeShortcutsState();
}

List<String> names = [
  'Quick Buy',
  'Wealth',
  'Invite to\nEarn',
  'Launchpool',
  'Copy\nTrading',
  'Grid\nTrading',
  'Rewards\nHub',
  'More',
];

class _HomeShortcutsState extends State<HomeShortcuts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: dim(192),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        mainAxisSpacing: dim(32),
        children: List.generate(
            8,
            (index) => GridItem(
                text: names[index],
                image: 'assets/images/grid${index + 1}.png')),
      ),
    );
  }
}
