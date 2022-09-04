import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ExporeMenu extends StatelessWidget {
  ExporeMenu({Key? key}) : super(key: key);

  final Stream<QuerySnapshot> readDataStream =
      FirebaseFirestore.instance.collection("admin").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f2f2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Expore Menu",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0B2E40),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
            StreamBuilder<QuerySnapshot>(
                stream: readDataStream,
                //readData(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Error");
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(child: const CircularProgressIndicator());
                  } else {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        height: 550,
                        child: GridView.builder(
                          itemCount: snapshot.requireData.size,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed("/singleFoodDetails");
                              },
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 110,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFFc4c4c4),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                        Positioned(
                                            top: 0,
                                            right: 0,
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.favorite_border_rounded,
                                                color: Color(0xFFE24047),
                                              ),
                                              onPressed: () {},
                                            )),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 125,
                                    left: 5,
                                    child: Container(
                                      height: 20,
                                      width: 160,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              snapshot.requireData.docs[index]
                                                  ['name'],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF0B2E40)),
                                            ),
                                            Text(
                                              "\$${snapshot.requireData.docs[index]['price']}",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF244395)),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Positioned(
                                    top: 150,
                                    left: 5,
                                    child: Container(
                                      height: 20,
                                      width: 160,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              snapshot.requireData.docs[index]
                                                  ['restaurantName'],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF0B2E40)),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ]),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  }
                }),
          ]),
        ),
      ),
    );
  }
}
