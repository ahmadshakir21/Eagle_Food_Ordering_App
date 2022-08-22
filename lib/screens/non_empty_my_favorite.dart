import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/item_info.dart';
import 'package:food_ordering_app/widgets/new_offer_item.dart';

class NonEmptyMyFavorite extends StatelessWidget {
  const NonEmptyMyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 630,
      width: 400,
      child: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return const ItemInfo();
        },
      ),
    );
  }
}
