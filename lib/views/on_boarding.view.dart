import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latech/config/constant.dart';
import 'package:latech/views/bottom_nav.view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, s) {
      return Scaffold(
        backgroundColor: primaryColor,
        body: OrientationBuilder(builder: (context, o) {
          if (o == Orientation.landscape) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Latech",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text("Tech Market",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 10)),
                    ),
                    Container(
                      width: 202,
                      height: 202,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png")),
                          shape: BoxShape.circle,
                          color: Color(0xFF191ACA)),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            CupertinoPageRoute(builder: (context) {
                          return const BottomNavView();
                        }));
                      },
                      child: Container(
                        width: s.maxWidth * 0.4,
                        height: s.maxHeight * 0.12,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "Let's Start",
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              CupertinoPageRoute(builder: (context) {
                            return const BottomNavView();
                          }));
                        },
                        child: const Text(
                          "Skip for now",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ))
                  ],
                )
              ],
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Latech",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Text("Tech Market",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 10)),
                ),
                Container(
                  width: 202,
                  height: 202,
                  margin: const EdgeInsets.only(bottom: 35),
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("assets/logo.png")),
                      shape: BoxShape.circle,
                      color: Color(0xFF191ACA)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) {
                      return const BottomNavView();
                    }));
                  },
                  child: Container(
                    width: s.maxWidth,
                    height: s.maxHeight * 0.08,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "Let's Start",
                      style: TextStyle(
                          fontSize: 15,
                          color: primaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          CupertinoPageRoute(builder: (context) {
                        return const BottomNavView();
                      }));
                    },
                    child: const Text(
                      "Skip for now",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ))
              ],
            ),
          );
        }),
      );
    });
  }
}
