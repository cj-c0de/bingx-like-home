import 'dart:async';

import 'package:bingx_like_home/sections/home_annon.dart';
import 'package:bingx_like_home/sections/home_app_bar.dart';
import 'package:bingx_like_home/sections/home_balance.dart';
import 'package:bingx_like_home/sections/home_coins.dart';
import 'package:bingx_like_home/sections/home_fav_buttons.dart';
import 'package:bingx_like_home/sections/home_main_tab.dart';
import 'package:bingx_like_home/sections/home_market_tab.dart';
import 'package:bingx_like_home/sections/home_position_bar.dart';
import 'package:bingx_like_home/sections/home_shortcuts.dart';
import 'package:bingx_like_home/sections/home_slider.dart';
import 'package:bingx_like_home/utils/dimensions.dart';
import 'package:bingx_like_home/utils/no_glow.dart';
import 'package:bingx_like_home/widgets/line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

bool prepared = false;

List<String> _menuTitles = [
  'Home',
  'Markets',
  'Futures',
  'Spot',
  'Assets',
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      home: const PrepareScreen(),
    );
  }
}

class PrepareScreen extends StatefulWidget {
  const PrepareScreen({super.key});

  @override
  State<PrepareScreen> createState() => _PrepareScreenState();
}

class _PrepareScreenState extends State<PrepareScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      prepareDim(context);
      prepared = true;
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const HomeScreen()));
      timer.cancel();
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    if (!prepared) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          elevation: 0,
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: dim(57),
        child: Column(
          children: [
            const Line(),
            Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: 0,
                selectedItemColor: Colors.black,
                unselectedItemColor: const Color(0xff7F7F7F),
                selectedFontSize: dim(10),
                unselectedFontSize: dim(10),
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w500),
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w500),
                type: BottomNavigationBarType.fixed,
                items: List.generate(
                  5,
                  (index) => BottomNavigationBarItem(
                    label: _menuTitles[index],
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: dim(5)),
                      child: Image.asset(
                        'assets/images/menu${index + 1}.png',
                        height: dim(18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: NoGlowScrollBehavior(),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: dim(10)),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: dim(20)),
                child: Column(
                  children: [
                    const HomeAppBar(),
                    SizedBox(height: dim(28)),
                    const HomeBalance(),
                    SizedBox(height: dim(20)),
                    const HomePositionBar(),
                  ],
                ),
              ),
              SizedBox(height: dim(18)),
              const Line(),
              SizedBox(height: dim(18)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: dim(20)),
                child: const HomeShortcuts(),
              ),
              SizedBox(height: dim(18)),
              const Line(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dim(20), vertical: dim(18)),
                child: const HomeMainTab(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: dim(20)),
                child: const HomeMarketTab(),
              ),
              const Line(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dim(24), vertical: dim(12)),
                child: const HomeCoins(),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: dim(24), vertical: dim(8)),
                child: const HomeFavButtons(),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: dim(10)),
                  child: const HomeSlider()),
              SizedBox(
                height: dim(10),
              ),
              const Line(),
              Padding(
                padding: EdgeInsets.all(dim(20)),
                child: const HomeAnnon(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
