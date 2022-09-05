import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ordering_app/models/admin_model.dart';
import 'package:food_ordering_app/models/user_model.dart';
import 'package:food_ordering_app/screens/my_bottom_navigation_bar.dart';
import 'package:food_ordering_app/screens/single_food_details.dart';
import 'package:food_ordering_app/widgets/drawer_items.dart';
import 'package:food_ordering_app/widgets/item_info.dart';
import 'package:food_ordering_app/widgets/new_offer_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // Stream<List<AdminModel>> readData() {
  //   return FirebaseFirestore.instance.collection("admin").snapshots().map(
  //       (snap) =>
  //           snap.docs.map((doc) => AdminModel.fromMap(doc.data())).toList());
  // }

  final Stream<QuerySnapshot> readDataStreamAdmin =
      FirebaseFirestore.instance.collection("admin").snapshots();

  final Stream<QuerySnapshot> readDataStreamUser =
      FirebaseFirestore.instance.collection("user").snapshots();

  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: readDataStreamUser,
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Error");
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          return Scaffold(
            key: scaffoldKey,
            drawer: Drawer(
              child: ListView(padding: EdgeInsets.zero, children: [
                DrawerHeader(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFF244395),
                  ),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              color: const Color(0xFFC3C3C3),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ahmad shakir",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                user!.email!,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                DrawerItems(
                    icon: Icons.ballot,
                    text: "My Order",
                    onClick: () {
                      Navigator.of(context).pushNamed("/myOrder");
                    }),
                DrawerItems(
                    icon: Icons.favorite,
                    text: "My Favorites",
                    onClick: () {
                      Navigator.of(context).pushNamed("/myFavorite");
                    }),
                DrawerItems(
                    icon: Icons.star_rounded,
                    text: "Write Reviews",
                    onClick: () {
                      Navigator.of(context).pushNamed("/writeReview");
                    }),
                DrawerItems(
                    icon: Icons.person,
                    text: "About Me",
                    onClick: () {
                      Navigator.of(context).pushNamed("/aboutMe");
                    }),
                DrawerItems(
                  icon: Icons.logout,
                  text: "Logout",
                  onClick: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          elevation: 5,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 185,
                            width: 350,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Alert",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF244395)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Are you Sure want to Logout?",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF244395)),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 110,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              primary: const Color(0xFF244395)),
                                          child: const Text(
                                            "Cancel",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          )),
                                    ),
                                    SizedBox(
                                      width: 110,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            FirebaseAuth.instance.signOut();
                                          },
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              primary: const Color(0xFFE24047)),
                                          child: const Text(
                                            "Logout",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ]),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 25, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: const Icon(
                              Icons.menu_rounded,
                              size: 35,
                              color: Color(0xFF0B2E40),
                            ),
                            onPressed: () {
                              scaffoldKey.currentState!.openDrawer();
                            }),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFF0B2E40),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //TODO: Change Name of user (Use String interpolation)
                          Text("Hello! Ahmed",
                              style: TextStyle(
                                  color: Color(0xFF0B2E40),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          const Text("What do you want to eat?",
                              style: TextStyle(
                                  color: Color(0xFF7E7B7B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                          Container(
                            width: 370,
                            height: 40,
                            margin: const EdgeInsets.only(top: 30, bottom: 30),
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
                          NewOfferItem(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Menu",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          StreamBuilder<QuerySnapshot>(
                              stream: readDataStreamAdmin,
                              //readData(),
                              builder: (context,
                                  AsyncSnapshot<QuerySnapshot> snapshot) {
                                if (snapshot.hasError) {
                                  return const Text("Error");
                                } else if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                      child: const CircularProgressIndicator());
                                } else {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
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
                                              Navigator.of(context).pushNamed(
                                                  "/singleFoodDetails");
                                            },
                                            child: Container(
                                              height: 200,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Stack(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(7),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        height: 110,
                                                        decoration: BoxDecoration(
                                                            color: const Color(
                                                                0xFFc4c4c4),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                      ),
                                                      Positioned(
                                                          top: 0,
                                                          right: 0,
                                                          child: IconButton(
                                                            icon: const Icon(
                                                              Icons
                                                                  .favorite_border_rounded,
                                                              color: Color(
                                                                  0xFFE24047),
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
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 5),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            snapshot.requireData
                                                                    .docs[index]
                                                                ['name'],
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color(
                                                                    0xFF0B2E40)),
                                                          ),
                                                          Text(
                                                            "\$${snapshot.requireData.docs[index]['price']}",
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color(
                                                                    0xFF244395)),
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
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 5),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            snapshot.requireData
                                                                    .docs[index]
                                                                [
                                                                'restaurantName'],
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color(
                                                                    0xFF0B2E40)),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
