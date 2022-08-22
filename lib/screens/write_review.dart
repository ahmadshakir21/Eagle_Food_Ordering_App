import 'package:flutter/material.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3F6F9),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: Color(0xFF0B2E40),
                        )),
                    const SizedBox(
                      width: 78,
                    ),
                    const Text(
                      "Write Reviews",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0B2E40),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Image.asset("assets/images/Icon3.png"),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline_rounded,
                          size: 35,
                          color: Color(0xFF244395),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline_rounded,
                          size: 35,
                          color: Color(0xFF244395),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline_rounded,
                          size: 35,
                          color: Color(0xFF244395),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline_rounded,
                          size: 35,
                          color: Color(0xFF244395),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star_outline_rounded,
                          size: 35,
                          color: Color(0xFF244395),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(0.0, 0.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 320,
                        child: const TextField(
                          decoration: InputDecoration(
                              label: Text(
                            "Your Name",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 320,
                        child: const TextField(
                          maxLines: 4,
                          decoration: InputDecoration(
                              label: Text(
                            "Write You Review",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 43,
                      ),
                      Container(
                        width: 170,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                primary: const Color(0xFF244395)),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )),
                      )
                    ]))
              ]),
            )));
  }
}
