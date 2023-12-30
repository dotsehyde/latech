import 'package:flutter/material.dart';
import 'package:latech/views/cart.view.dart';
import 'package:latech/views/home.view.dart';
import 'package:latech/views/search.view.dart';
import 'package:latech/views/user.view.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int index = 0;
  List<Widget> pages = [HomeView(), SearchView(), CartView(), UserView()];
  @override
  Widget build(BuildContext context) {
    List<Widget> icons = [
      index == 0
          ? Image.asset("assets/home_a.png")
          : Image.asset("assets/home.png"),
      index == 1
          ? Image.asset("assets/search_a.png")
          : Image.asset("assets/search.png"),
      index == 2
          ? Image.asset("assets/cart_a.png")
          : Image.asset("assets/cart.png"),
      index == 3
          ? Image.asset("assets/user_a.png")
          : Image.asset("assets/user.png"),
    ];
    return OrientationBuilder(builder: (context, o) {
      return LayoutBuilder(builder: (context, s) {
        if (o == Orientation.portrait) {
          return Scaffold(
              body: IndexedStack(
                index: index,
                children: pages,
              ),
              bottomNavigationBar: Container(
                height: s.maxHeight * 0.1,
                padding: EdgeInsets.only(
                    left: s.maxWidth * 0.05,
                    right: s.maxWidth * 0.05,
                    top: s.maxHeight * 0.03),
                color: const Color(0xFFE0ECF8),
                child: SafeArea(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: icons
                          .map((e) => GestureDetector(
                                child: e,
                                onTap: () {
                                  setState(() {
                                    index = icons.indexOf(e);
                                  });
                                },
                              ))
                          .toList()),
                ),
              ));
        } else {
          //Landscape
          return Scaffold(
            body: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: s.maxHeight,
                  width: s.maxWidth * 0.1,
                  padding: EdgeInsets.only(
                    top: s.maxHeight * 0.03,
                    bottom: s.maxHeight * 0.03,
                  ),
                  color: const Color(0xFFE0ECF8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: icons
                          .map((e) => GestureDetector(
                                child: e,
                                onTap: () {
                                  setState(() {
                                    index = icons.indexOf(e);
                                  });
                                },
                              ))
                          .toList()),
                ),
                SizedBox(
                  width: s.maxWidth * 0.9,
                  height: s.maxHeight,
                  child: IndexedStack(
                    index: index,
                    children: pages,
                  ),
                )
              ],
            ),
          );
        }
      });
    });
  }
}
