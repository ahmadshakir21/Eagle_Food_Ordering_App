import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class OrderItemCart extends StatelessWidget {
  const OrderItemCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.9,
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
                    width: 70,
                  ),
                  Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
                            decoration: BoxDecoration(
                                color: const Color(0xFFf3f6f9),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(children: [
                              InkWell(
                                key: GlobalKey(),
                                onTap: () =>
                                    context.read<Counter>().decrement(),
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
                                child: Center(
                                  child: Text(
                                    context.watch<Counter>().count.toString(),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF244395)),
                                  ),
                                ),
                              ),
                              InkWell(
                                key: GlobalKey(),
                                onTap: () =>
                                    context.read<Counter>().increment(),
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
          height: 75,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 5,
              ),
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
                height: 20,
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
              const SizedBox(height: 20),
              const Divider(thickness: 2, color: Colors.grey),
              const SizedBox(
                height: 20,
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
          height: 40,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
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
