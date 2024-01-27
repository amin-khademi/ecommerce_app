import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/screens/main_screen/basket_screen.dart';
import 'package:ecommerce_app/screens/main_screen/home_screen.dart';
import 'package:ecommerce_app/screens/main_screen/profileScreen.dart';
import 'package:ecommerce_app/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BtmNavScreenIndex {
  BtmNavScreenIndex._();
  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _routeHistory = [0];

  int selectedIndex = BtmNavScreenIndex.home;
  final GlobalKey<NavigatorState> _homekey = GlobalKey();
  final GlobalKey<NavigatorState> _basketkey = GlobalKey();
  final GlobalKey<NavigatorState> _profilekey = GlobalKey();

  late final map = {
    BtmNavScreenIndex.home: _homekey,
    BtmNavScreenIndex.basket: _basketkey,
    BtmNavScreenIndex.profile: _profilekey
  };

  Future<bool> _onWillPop() async {
    if (map[selectedIndex]!.currentState!.canPop()) {
      map[selectedIndex]!.currentState!.pop();
    } else if (_routeHistory.length > 1) {
      setState(() {
        _routeHistory.removeLast();
        selectedIndex = _routeHistory.last;
      });
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bottomNavHeight = size.height * .1;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: BtmNavScreenIndex.home.toDouble(),
                left: 0,
                right: 0,
                bottom: bottomNavHeight,
                child: IndexedStack(
                  index: selectedIndex.toInt(),
                  children: [
                    Navigator(
                      key: _homekey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    Navigator(
                      key: _basketkey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const BasketScreen(),
                      ),
                    ),
                    Navigator(
                      key: _profilekey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    ),
                  ],
                )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: bottomNavHeight,
                  color: LightAppColor.btmNavColor,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BtmNavItem(
                            iconSvgPath: Assets.svg.user,
                            text: "پروفایل",
                            onTap: () => btmNavOnPressed(
                                index: BtmNavScreenIndex.profile),
                            isActive:
                                selectedIndex == BtmNavScreenIndex.profile),
                        BtmNavItem(
                            iconSvgPath: Assets.svg.cart,
                            text: "سبد خرید",
                            onTap: () => btmNavOnPressed(
                                index: BtmNavScreenIndex.basket),
                            isActive:
                                selectedIndex == BtmNavScreenIndex.basket),
                        BtmNavItem(
                            iconSvgPath: Assets.svg.home,
                            text: "خانه",
                            onTap: () =>
                                btmNavOnPressed(index: BtmNavScreenIndex.home),
                            isActive: selectedIndex == BtmNavScreenIndex.home),
                      ]),
                ))
          ],
        ),
      ),
    );
  }

  btmNavOnPressed({required index}) {
    setState(() {
      selectedIndex = index;
      if (_routeHistory.contains(index) && index != 0) {
        _routeHistory.remove(index);
      }
      _routeHistory.add(selectedIndex);
      print(_routeHistory);
    });
  }
}
