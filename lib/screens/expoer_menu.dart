import 'package:flutter/material.dart';

class ExporeMenu extends StatelessWidget {
  const ExporeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 30,
                    color: Color(0xFF0B2E40),
                  )),
              const Text(
                "Expore Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0B2E40),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color(0xFF0B2E40),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 370,
              height: 40,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: "Search Food",
                    filled: true,
                    fillColor: const Color(0xFFD9D9D9),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none)),
              ),
            ),
            Container(
              height: 550,
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 110,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFc4c4c4),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Positioned(
                                  right: 0,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      size: 23,
                                    ),
                                    onPressed: () {},
                                  )),
                              Positioned(
                                  bottom: 0,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_box_outlined,
                                      color: Colors.white,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 125,
                          left: 10,
                          child: Row(
                            children: [
                              const Text(
                                "Burger",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF0B2E40)),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF0B2E40)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 7,
                          left: 10,
                          child: Row(children: const [
                            Text(
                              "18\$",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF244395)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "McDonalds",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0B2E40)),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
