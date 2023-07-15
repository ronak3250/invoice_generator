import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fruitmodel.dart';
import 'jsonfile.dart';

class Itemscreen extends StatefulWidget {
  const Itemscreen({super.key});

  @override
  State<Itemscreen> createState() => _ItemscreenState();
}

class _ItemscreenState extends State<Itemscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(fruits.length);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/loginicon.png',
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    'nector',
                    style: GoogleFonts.inter(
                        color: Color(0xff53B175),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_shopping_cart_outlined,
                        color: Color(0xff53B175),
                        size: 30,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/banner.png'))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Exclusive Offer",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        color: Color(0xff53B175),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.separated(
                  itemCount: fruits.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(
                              fruits[index].image.toString(),
                              height: 100,
                              width: 100,
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    fruits[index].name.toString(),
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        fruits[index].desc,
                                        style: GoogleFonts.inter(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        height: 30,
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          child: Icon(Icons.add),
                                          backgroundColor: Color(0xff53B175),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    fruits[index].price,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black26, width: 1),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                   ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Best Selling",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.inter(
                        color: Color(0xff53B175),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
             /* Container(
                height: 200,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(
                              fruits[index]['image']!,
                              height: 100,
                              width: 100,
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    fruits[index]['name'].toString(),
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        fruits[index]['desc'].toString(),
                                        style: GoogleFonts.inter(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        height: 30,
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          child: Icon(Icons.add),
                                          backgroundColor: Color(0xff53B175),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    fruits[index]['price'].toString(),
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black26, width: 1),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: fruits.length),
              ),*/
            ],
          ),
        ),
      ),
    ));
  }
}
