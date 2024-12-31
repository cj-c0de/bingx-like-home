import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomeMarketTab extends StatefulWidget {
  const HomeMarketTab({super.key});

  @override
  State<HomeMarketTab> createState() => _HomeMarketTabState();
}

class _HomeMarketTabState extends State<HomeMarketTab>
    with TickerProviderStateMixin {
  late TabController _controller;

  final List<String> _tabItems = <String>[
    'Spot',
    'Futures',
  ];

  int _tabIndex = 1;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _controller,
      onTap: (index) {
        setState(() {
          _tabIndex = index;
        });
      },
      indicatorColor: Colors.black,
      labelStyle: TextStyle(
        fontSize: dim(13),
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: dim(13),
        fontWeight: FontWeight.w500,
        color: const Color(0xff949494),
      ),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: dim(3),
      splashFactory: NoSplash.splashFactory,
      labelPadding: EdgeInsets.fromLTRB(dim(3), 0, dim(18), 0),
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      dividerColor: Colors.transparent,
      tabs: List.generate(
        _tabItems.length,
        (index) => Tab(
          child: Text(
            _tabItems[index],
            style: _tabIndex == index
                ? TextStyle(
                    fontSize: dim(13),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )
                : TextStyle(
                    fontSize: dim(13),
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff949494),
                  ),
          ),
        ),
      ),
    );
  }
}
