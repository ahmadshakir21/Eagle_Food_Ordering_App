import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderItemCart extends StatelessWidget {
  const OrderItemCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            child: ListView.separated(
              itemCount: 7,
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 2,
                );
              },
              itemBuilder: (context, index) {
                return Row(children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Burger",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "15\$",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //TODO: create count up & count down button
                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                color: const Color(0xFFf3f6f9),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF244395),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Icon(Icons.remove,
                                      size: 25, color: Color(0xFFf3f6f9)),
                                ),
                              ),
                              //TODO: add functionality for the child of Text widget
                              Container(
                                width: 50,
                                child: const Center(
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF244395)),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF244395),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Icon(Icons.add,
                                      size: 25, color: Color(0xFFf3f6f9)),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ))
                ]);
              },
            )),
        const SizedBox(
          height: 55,
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
          height: 20,
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
