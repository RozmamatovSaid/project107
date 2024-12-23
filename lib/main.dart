import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project107/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeApp(),
    );
  }
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi! Dianne",
              style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 25.31,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "What are you cooking today",
              style: TextStyle(color: Colors.white, fontSize: 13.45),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 38),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13.84),
                  child: Container(
                    color: AppColors.pinkPale,
                    width: 28,
                    height: 28,
                    child: Center(
                      child: SvgPicture.asset(
                        "images/notification.svg",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13.84),
                  child: Container(
                    color: AppColors.pinkPale,
                    width: 28,
                    height: 28,
                    child: Center(
                      child: SvgPicture.asset(
                        "images/search.svg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: AppColors.backgroundColorDark,
      ),
      backgroundColor: AppColors.backgroundColorDark,
      body: Padding(
        padding: EdgeInsets.only(
          top: 12,
          left: 15,
          right: 15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trending Recipe",
                  style: TextStyle(
                    color: AppColors.redPinkMain,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage("images/salami_pizza.png"),
                        width: 358,
                        height: 143,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 7,
                        right: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.pinkPale,
                            borderRadius: BorderRadius.circular(13.84),
                          ),
                          width: 28,
                          height: 28,
                          child: Center(
                            child: SvgPicture.asset(
                              "images/heart.svg",
                              width: 16,
                              height: 16,
                              fit: BoxFit.contain,
                              color: AppColors.pinkBorder,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 348,
                  height: 49,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                              left: 15,
                              top: 2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Salami and cheese pizza",
                                  style: TextStyle(
                                      color: AppColors.Texts,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "images/clock.svg",
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "30min",
                                      style: TextStyle(color: AppColors.Texts),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "This is a quick overview of the ingredients...",
                                style: TextStyle(
                                  color: AppColors.Texts,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                      color: AppColors.pinkBorder,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset(
                                    "images/star.svg",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                    ),
                    border: Border(
                      left: BorderSide(
                        color: AppColors.pinkBorder,
                      ),
                      right: BorderSide(
                        color: AppColors.pinkBorder,
                      ),
                      bottom: BorderSide(
                        color: AppColors.pinkBorder,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 255,
              decoration: BoxDecoration(
                color: const Color(0xffFD5D69),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18, top: 10),
                    child: Text(
                      "Your Recipes",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              child: Image(
                                image: AssetImage(
                                    "images/ceviche-bowl-black-table 1.png"),
                                width: 169,
                                height: 162,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 8,
                              right: 8,
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFD5D69),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "images/heart.svg",
                                    width: 15,
                                    height: 15,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -25,
                              left: 0,
                              child: Container(
                                width: 169,
                                height: 49,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Chicken Burger',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff1C0F0D),
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Row(
                                        children: [
                                          const Text(
                                            "5",
                                            style: TextStyle(
                                                color: Color(0xffEC888D),
                                                fontSize: 12),
                                          ),
                                          const SizedBox(width: 3),
                                          SvgPicture.asset(
                                            "images/star.svg",
                                            width: 10,
                                            height: 10,
                                          ),
                                          const SizedBox(width: 30),
                                          SvgPicture.asset(
                                            "images/clock.svg",
                                            width: 10,
                                            height: 10,
                                          ),
                                          const SizedBox(width: 4),
                                          const Text(
                                            '15min',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xffEC888D),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              child: Image(
                                image: AssetImage(
                                    "images/ceviche-bowl-black-table 1 (1).png"),
                                width: 169,
                                height: 162,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 8,
                              right: 8,
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFD5D69),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "images/heart.svg",
                                    width: 15,
                                    height: 15,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -25,
                              left: 0,
                              child: Container(
                                width: 169,
                                height: 49,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(14),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Tiramisu',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff1C0F0D),
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Row(
                                        children: [
                                          const Text(
                                            "5",
                                            style: TextStyle(
                                                color: Color(0xffEC888D),
                                                fontSize: 12),
                                          ),
                                          const SizedBox(width: 3),
                                          SvgPicture.asset(
                                            "assets/star.svg",
                                            width: 10,
                                            height: 10,
                                          ),
                                          const SizedBox(width: 30),
                                          SvgPicture.asset(
                                            "assets/clock.svg",
                                            width: 10,
                                            height: 10,
                                          ),
                                          const SizedBox(width: 4),
                                          const Text(
                                            '15min',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xffEC888D),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "Top Chef",
                    style: TextStyle(
                      color: AppColors.redPinkMain,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage("images/chef1.png"),
                          width: 82.69,
                          height: 74,
                        ),
                        Text(
                          "Joseph",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage("images/chef2.png"),
                        ),
                        Text(
                          "Andrew",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage("images/chef3.png"),
                        ),
                        Text(
                          "Emily",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image(
                          image: AssetImage("images/chef4.png"),
                        ),
                        Text(
                          "Jessica",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
