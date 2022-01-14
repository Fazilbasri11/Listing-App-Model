import 'dart:ffi';

import 'package:doctor/screens/iklan.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'detail',
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.blue[800],
            title: Text(
              "Welcome Back \n${faker.person.prefix()} ${faker.person.firstName()}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            actions: [
              Container(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("images/dsatu.jpg"),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            //searcbar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  width: 350,
                  height: 40,
                  child: const TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 14),
                      hintText: 'Dokter anak',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.filter_alt_outlined),
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //card promosi
            iklan(),
            //categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    left: 20,
                    bottom: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 30, left: 20, bottom: 10, right: 20),
                  child: Text(
                    "View All",
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
            //categories
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 25, left: 30),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(218, 221, 252, 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color.fromRGBO(255, 67, 123, 1.0),
                                    Color.fromRGBO(255, 155, 185, 0.8),
                                  ],
                                )),
                            width: 60,
                            height: 60,
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Image(
                                  image: AssetImage(
                                "icons/heart.png",
                              )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Cardiology"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color.fromRGBO(87, 235, 255, 1.0),
                                    Color.fromRGBO(154, 244, 255, 1.0),
                                  ],
                                )),
                            width: 60,
                            height: 60,
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Image(
                                  image: AssetImage(
                                "icons/neurology.png",
                              )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Neurology"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blue,
                                    Colors.white70,
                                  ],
                                )),
                            width: 60,
                            height: 60,
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Image(
                                  image: AssetImage(
                                "icons/eye.png",
                              )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Ophthalmology"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color.fromRGBO(208, 117, 255, 1.0),
                                    Color.fromRGBO(230, 183, 255, 0.8),
                                  ],
                                )),
                            width: 60,
                            height: 60,
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Image(
                                  image: AssetImage(
                                "icons/coronavirus.png",
                              )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Infectious"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Colors.blue,
                                    Colors.white70,
                                  ],
                                )),
                            width: 60,
                            height: 60,
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Image(
                                  image: AssetImage(
                                "icons/tooth.png",
                              )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Dentist"),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            //title obat

            //title profile
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, left: 20),
                  child: Text(
                    "Available Doctors",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                //   child: Text(
                //     "View All",
                //     style: TextStyle(fontSize: 12),
                //   ),
                // ),
              ],
            ),
            //daftar profile
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
