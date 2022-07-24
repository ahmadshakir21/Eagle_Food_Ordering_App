import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastScreen = false;

  Widget myOnBoardingScreens(
      {required String url,
      required String title,
      required String subtitle,
      required Color color}) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 275,
          width: 275,
          child: Image.asset(
            url,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: color),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: color.withOpacity(0.4)),
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastScreen = index == 2;
              });
            },
            children: [
              myOnBoardingScreens(
                  url: "assets/images/select_restaurant.jpg",
                  title: "Select Restaurant",
                  subtitle:
                      "This app is about ordering food , so select your favorite restaurant and order your food",
                  color: const Color(0xFF0B2E40)),
              myOnBoardingScreens(
                  url: "assets/images/order_your_food.jpg",
                  title: "Order Your Food",
                  subtitle:
                      "Order your favorite food and let us bring this food for you",
                  color: const Color(0xFF0B2E40)),
              myOnBoardingScreens(
                  url: "assets/images/deliver_to_your_home.jpg",
                  title: "Deliver To Your Home",
                  subtitle:
                      "Now you selected your favorite food and wait it , we will bring this food for your location",
                  color: const Color(0xFF0B2E40)),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          child: Stack(children: [
            Center(
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut),
                  effect: ExpandingDotsEffect(
                      spacing: 24,
                      activeDotColor: const Color(0xFF0B2E40),
                      dotColor: const Color(0xFF0B2E40).withOpacity(0.6))),
            ),
            Positioned(
              right: 10,
              bottom: 15,
              child: isLastScreen
                  ? TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                      },
                      child: const Text(
                        "START",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0B2E40)),
                      ))
                  : TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      },
                      child: const Text(
                        "NEXT",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0B2E40)),
                      )),
            )
          ]),
        ));
  }
}
