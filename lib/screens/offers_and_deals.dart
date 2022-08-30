import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/screens/my_bottom_navigation_bar.dart';
import 'package:food_ordering_app/widgets/new_offer_item.dart';

class OffersAndDeals extends StatelessWidget {
  const OffersAndDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Offers & Deals",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF0B2E40),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 600,
                //TODO: Change it to ListView.builder
                child: SingleChildScrollView(
                    child: Column(
                  children: const [
                    NewOfferItem(),
                    SizedBox(
                      height: 25,
                    ),
                    NewOfferItem(),
                    SizedBox(
                      height: 25,
                    ),
                    NewOfferItem(),
                    SizedBox(
                      height: 25,
                    ),
                    NewOfferItem(),
                    SizedBox(
                      height: 25,
                    ),
                    NewOfferItem()
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
