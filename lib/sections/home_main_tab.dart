import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomeMainTab extends StatefulWidget {
  const HomeMainTab({super.key});

  @override
  State<HomeMainTab> createState() => _HomeMainTabState();
}

class _HomeMainTabState extends State<HomeMainTab>
    with TickerProviderStateMixin {
  late TabController _controller;

  final List<String> _tabItems = <String>[
    'Favorites',
    'Perp Futures',
    'Std. Futures',
  ];

  int _tabIndex = 0;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dim(35),
      child: TabBar(
        controller: _controller,
        enableFeedback: false,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
        tabAlignment: TabAlignment.start,
        splashFactory: NoSplash.splashFactory,
        indicatorColor: Colors.transparent,
        automaticIndicatorColorAdjustment: false,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
            color: const Color(0xffF4F5F7),
            borderRadius: BorderRadius.circular(500)),
        labelPadding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
        isScrollable: true,
        dividerColor: Colors.transparent,
        tabs: List.generate(
          _tabItems.length,
          (index) => Tab(
            child: Padding(
              padding: EdgeInsets.fromLTRB(dim(16), 0, dim(16), 0),
              child: Text(
                _tabItems[index],
                style: _tabIndex == index
                    ? TextStyle(
                        fontSize: dim(15),
                        fontFamily: 'Inter',
                        letterSpacing: -.25,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff111214),
                      )
                    : TextStyle(
                        fontSize: dim(13),
                        fontFamily: 'Inter',
                        letterSpacing: -.25,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff949494),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
