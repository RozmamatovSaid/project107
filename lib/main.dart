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
      extendBody: true,
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
        child: SingleChildScrollView(
          child: Column(
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
                              padding: EdgeInsets.only(
                                right: 15,
                                left: 15,
                                top: 2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        style:
                                            TextStyle(color: AppColors.Texts),
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
              SizedBox(
                height: 19,
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
                          YourRecipesItem(
                            image: "images/ceviche-bowl-black-table 1.png",
                            title: "Chisken Burger",
                            number: "5",
                            desc: "15min",
                          ),
                          SizedBox(width: 10),
                          YourRecipesItem(
                            image: "images/ceviche-bowl-black-table 1 (1).png",
                            title: "Tiramisu",
                            number: "5",
                            desc: "15min",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 19,
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
                      TopChef(image: "images/chef1.png", text: "Joseph"),
                      TopChef(image: "images/chef2.png", text: "Andrew"),
                      TopChef(image: "images/chef3.png", text: "Emily"),
                      TopChef(image: "images/chef4.png", text: "Jessico"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Recently Added",
                    style: TextStyle(color: AppColors.redPinkMain),
                  ),
                ],
              ),
              RecentlyAdded(),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 169,
              height: 153,
              child: Image(
                image: AssetImage("images/tobaco.png"),
              ),
            ),
            Positioned(
              bottom: -50,
              left: 6,
              child: Container(
                width: 158,
                height: 76,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 120,
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              width: 169,
              height: 153,
              child: Image(
                image: AssetImage("images/mojito.png"),
              ),
            ),
            Positioned(
              bottom: -50,
              left: 6,
              child: Container(
                width: 158,
                height: 76,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class YourRecipesItem extends StatelessWidget {
  const YourRecipesItem({
    super.key,
    required this.image,
    required this.title,
    required this.number,
    required this.desc,
  });

  final String image, title, number, desc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          child: Image(
            image: AssetImage(image),
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1C0F0D),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        number,
                        style:
                            TextStyle(color: Color(0xffEC888D), fontSize: 12),
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
                      Text(
                        desc,
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
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 281,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.redPinkMain,
          borderRadius: BorderRadius.circular(33),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("images/svg/home.svg"),
            SvgPicture.asset("images/svg/community.svg"),
            SvgPicture.asset("images/svg/categories.svg"),
            SvgPicture.asset("images/svg/profile.svg"),
          ],
        ),
      ),
    );
  }
}

class TopChef extends StatelessWidget {
  const TopChef({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          width: 82.69,
          height: 74,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
