import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:challenge_nera/pages/collections_mobile.dart';
import 'dart:convert';
import "package:challenge_nera/widgets/product_card.dart";
import "package:flutter/material.dart";
import "dart:ui";
import "package:challenge_nera/widgets/banner_clipper.dart";
import "package:challenge_nera/widgets/clip_shadow_path.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'dart:math' as math;

class CollectionsMobile extends StatefulWidget {
  @override
  _CollectionsMobileState createState() => _CollectionsMobileState();
}

class _CollectionsMobileState extends State<CollectionsMobile> {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;
  bool isActive5 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/1.jpg',
            height: 500,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(44),
                  topRight: Radius.circular(44),
                ),
              ),
              padding: EdgeInsets.only(top: 44),
              height: 600,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "COLLECTIONS",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                    fontSize: 32,
                    fontFamily: 'Secular_One',
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: Container(
                  // padding: EdgeInsets.only(top:6),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                           width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Stack(
                                  children: [
                                    AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(8, 0, 0, 8),
                                          color: Colors.indigoAccent,
                                        )),
                                    InkWell(
                                      onTap: () {},
                                      onHover: (value) {
                                        setState(() {
                                          isActive1 = value;
                                        });
                                      },
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 200),
                                          height: double.infinity,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              top: BorderSide(
                                                color: Colors.transparent,
                                                width: isActive1 ? 8 : 0,
                                              ),
                                              right: BorderSide(
                                                color: Colors.transparent,
                                                width: isActive1 ? 8 : 0,
                                              ),
                                              bottom: BorderSide(
                                                color: Colors.transparent,
                                                width: isActive1 ? 0 : 8,
                                              ),
                                              left: BorderSide(
                                                color: Colors.transparent,
                                                width: isActive1 ? 0 : 8,
                                              ),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    colorFilter: ColorFilter.mode(
                                                      Colors.black
                                                          .withOpacity(0.6),
                                                      BlendMode.dstATop,
                                                    ),
                                                    image: AssetImage(
                                                      'assets/images/c.jpg',
                                                    ),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white
                                                          .withOpacity(0.6),
                                                      spreadRadius: 1,
                                                      blurRadius: 6,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: math.pi / 4,
                                                child: Center(
                                                  child: Text(
                                                    "SYMMETRIX",
                                                    style: TextStyle(
                                                      letterSpacing: 5,
                                                      fontSize: 14,
                                                      fontFamily: 'Secular_One',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(8, 0, 0, 8),
                                      color: Colors.blue,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isActive2 = value;
                                      });
                                    },
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive2 ? 8 : 0,
                                            ),
                                            right: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive2 ? 8 : 0,
                                            ),
                                            bottom: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive2 ? 0 : 8,
                                            ),
                                            left: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive2 ? 0 : 8,
                                            ),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  colorFilter: ColorFilter.mode(
                                                    Colors.black
                                                        .withOpacity(0.6),
                                                    BlendMode.dstATop,
                                                  ),
                                                  image: AssetImage(
                                                    'assets/images/f.jpg',
                                                  ),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.6),
                                                    spreadRadius: 1,
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: math.pi / 4,
                                              child: Center(
                                                child: Text(
                                                  "SEMTEX",
                                                  style: TextStyle(
                                                    letterSpacing: 5,
                                                    fontSize: 14,
                                                    fontFamily: 'Secular_One',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(8, 0, 0, 8),
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isActive3 = value;
                                      });
                                    },
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive3 ? 8 : 0,
                                            ),
                                            right: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive3 ? 8 : 0,
                                            ),
                                            bottom: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive3 ? 0 : 8,
                                            ),
                                            left: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive3 ? 0 : 8,
                                            ),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  colorFilter: ColorFilter.mode(
                                                    Colors.black
                                                        .withOpacity(0.6),
                                                    BlendMode.dstATop,
                                                  ),
                                                  image: AssetImage(
                                                    'assets/images/a.jpg',
                                                  ),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.6),
                                                    spreadRadius: 1,
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: math.pi / 4,
                                              child: Center(
                                                child: Text(
                                                  "MAVERIX",
                                                  style: TextStyle(
                                                    letterSpacing: 5,
                                                    fontSize: 14,
                                                    fontFamily: 'Secular_One',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(8, 0, 0, 8),
                                      color: Colors.pinkAccent,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isActive4 = value;
                                      });
                                    },
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: double.infinity,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive4 ? 8 : 0,
                                            ),
                                            right: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive4 ? 8 : 0,
                                            ),
                                            bottom: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive4 ? 0 : 8,
                                            ),
                                            left: BorderSide(
                                              color: Colors.transparent,
                                              width: isActive4 ? 0 : 8,
                                            ),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  colorFilter: ColorFilter.mode(
                                                    Colors.black
                                                        .withOpacity(0.6),
                                                    BlendMode.dstATop,
                                                  ),
                                                  image: AssetImage(
                                                    'assets/images/d.jpg',
                                                  ),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.6),
                                                    spreadRadius: 1,
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: math.pi / 4,
                                              child: Center(
                                                child: Text(
                                                  "MATRIX",
                                                  style: TextStyle(
                                                    letterSpacing: 5,
                                                    fontSize: 14,
                                                    fontFamily: 'Secular_One',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                           width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Stack(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(8, 0, 0, 8),
                                        color: Colors.purpleAccent,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      onHover: (value) {
                                        setState(() {
                                          isActive5 = value;
                                        });
                                      },
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          child: AnimatedContainer(
                                            duration: Duration(milliseconds: 200),
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                top: BorderSide(
                                                  color: Colors.transparent,
                                                  width: isActive5 ? 8 : 0,
                                                ),
                                                right: BorderSide(
                                                  color: Colors.transparent,
                                                  width: isActive5 ? 8 : 0,
                                                ),
                                                bottom: BorderSide(
                                                  color: Colors.transparent,
                                                  width: isActive5 ? 0 : 8,
                                                ),
                                                left: BorderSide(
                                                  color: Colors.transparent,
                                                  width: isActive5 ? 0 : 8,
                                                ),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      colorFilter:
                                                          ColorFilter.mode(
                                                        Colors.black
                                                            .withOpacity(0.6),
                                                        BlendMode.dstATop,
                                                      ),
                                                      image: AssetImage(
                                                        'assets/images/b.jpg',
                                                      ),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.white
                                                            .withOpacity(0.6),
                                                        spreadRadius: 1,
                                                        blurRadius: 6,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Transform.rotate(
                                                  angle: math.pi / 4,
                                                  child: Center(
                                                    child: Text(
                                                      "ASSENTRIX",
                                                      style: TextStyle(
                                                        letterSpacing: 5,
                                                        fontSize: 14,
                                                        fontFamily: 'Secular_One',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: AspectRatio(
                                aspectRatio: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 600,
          //     child: Container(color: Colors.blue, child: ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
