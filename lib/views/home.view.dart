import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latech/config/constant.dart';
import 'package:latech/config/data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> options = [
      {"title": "Category", "icon": "assets/category.png"},
      {"title": "Favorites", "icon": "assets/star.png"},
      {"title": "Gifts", "icon": "assets/gift.png"},
      {"title": "Best Sellers", "icon": "assets/profiles.png"},
    ];
    return OrientationBuilder(builder: (context, o) {
      return LayoutBuilder(builder: (context, s) {
        if (o == Orientation.portrait) {
          return Scaffold(
            body: SafeArea(
                top: true,
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: s.maxWidth * 0.05),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: s.maxWidth,
                            margin: const EdgeInsets.only(bottom: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: s.maxWidth * 0.03),
                            height: 103,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "Base home speaker",
                                        style: TextStyle(
                                            fontSize: 15,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      "USD 279",
                                      style: TextStyle(
                                          fontSize: 13,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Image.asset("assets/header.png")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: s.maxHeight * 0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: options
                                  .map((e) => Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFE0ECF8),
                                                shape: BoxShape.circle),
                                            child: Image.asset(e['icon']),
                                          ),
                                          Text(
                                            e['title'],
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: primaryColor),
                                          )
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Products",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: s.maxHeight * 0.53,
                            child: GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 0.9,
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10,
                                        crossAxisCount: 2),
                                itemCount: 4,
                                itemBuilder: (context, i) {
                                  var p = products[i];
                                  return Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey[200]!,
                                              offset: const Offset(0, 5),
                                              blurRadius: 20,
                                              spreadRadius: 0)
                                        ]),
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Image.asset(
                                                p['img'],
                                                height: s.maxHeight * 0.15,
                                              ),
                                            ),
                                            Positioned(
                                              top: 12,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFE0ECF8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Text(
                                                  "-50%",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: primaryColor),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        Text(
                                          "${p['title']}",
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "USD ${p['price']}",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: primaryColor,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const Spacer()
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Container(
                            width: s.maxWidth,
                            height: s.maxHeight * 0.12,
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[200]!,
                                      offset: const Offset(0, 10),
                                      blurRadius: 50,
                                      spreadRadius: 5)
                                ]),
                            alignment: Alignment.center,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 5),
                                  child: Image.asset(
                                    "assets/7.png",
                                    height: s.maxHeight * 0.15,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFE0ECF8),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Best Sale",
                                        style: TextStyle(
                                            fontSize: 10, color: primaryColor),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        "Samsung A52",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      "USD 236",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: primaryColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  margin: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.black26),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                )),
          );
        } else {
          //Landscape
          return const Scaffold(body: Center(child: Text("Home View")));
        }
      });
    });
  }
}
