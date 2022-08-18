import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderItemCart extends StatelessWidget {
  const OrderItemCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 260,
            color: Colors.pink,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Text("data");
              },
            )),
        const SizedBox(
          height: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            width: 240,
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  hintText: "Discount Code",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: const Color(0xFFD9D9D9),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none)),
            ),
          ),
          Container(
            width: 100,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFE24047),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Text(
                "Apply",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 183,
          width: 385,
          decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text("Items Total",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      Text("24\$",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Discount",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      Text("24\$",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFE24047),
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Delivery",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      Text("24\$",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ]),
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 2, color: Colors.grey),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Grand Total",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text("24\$",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                  ]),
            ]),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 385,
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: const Color(0xFF244395),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: const Text(
              "Checkout",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
