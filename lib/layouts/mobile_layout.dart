import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:challenge_nera/pages/home_page.dart';
import 'package:challenge_nera/pages/collections_page.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import "package:flutter_card_swipper/flutter_card_swiper.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import 'package:challenge_nera/layouts/mobile_layout.dart';
import 'package:challenge_nera/pages/collections_mobile.dart';

class MobileLayout extends StatefulWidget {
  MobileLayout({this.valueListTitle});
  int valueListTitle;
  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black, //Color(0XFF4f104a), //Color(0XFF332134),//
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          widget.valueListTitle == 0
              ? Container(
                  padding: EdgeInsets.all(32),
                  // width: MediaQuery.of(context).size.width - 64,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   children: [
                      SizedBox(
                        height: 32,
                      ),

                      //     Spacer(),
                      //     // Container(
                      //     //   color: Colors.purple,
                      //     //   child: Row(
                      //     //     children: [
                      //     Icon(Icons.menu),
                      //     Icon(Icons.menu),
                      //     Icon(Icons.menu),
                      //     //     ],
                      //     //   ),
                      //     // ),
                      //   ],
                      // ),
                      Spacer(),
                      Image.asset(
                        'assets/logo/nera.png',
                        fit: BoxFit.fitWidth,
                        // width: 740,
                        // width: MediaQuery.of(context)
                        //         .size
                        //         .width /
                        //     2.3,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/icons/facebook-2.svg',
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/purple/insta.svg',
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              'assets/icons/twitter.svg',
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 24,
                            child: SvgPicture.asset(
                              'assets/purple/mewnu_youtube.svg',
                              color: Colors.white,
                            ),
                          ),
                          Spacer(flex: 2),
                        ],
                      ),
                    ],
                  ),
                )
              : Container(),
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 76,
              width: MediaQuery.of(context).size.width,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "NERA",
                    style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontFamily: 'Lexend_Zetta',
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF163c55),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(44),
                    ),
                  ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    children: [
                      SizedBox(width: 16),
                      Container(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(
                          'assets/ui_icons/svg/097-user.svg',
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(width: 32),
                      // Spacer(),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(width: 32),
                      // Spacer(),
                      Container(
                        height: 24,
                        width: 30,
                        // color: Colors.pink,
                        child: SvgPicture.asset(
                          'assets/purple/menu.svg',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
              ]),
            ),
            // Icon(Icons.menu),
          ),
          widget.valueListTitle == 0
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF163c55),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(44),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(24,24,24,16),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            //Navigator.of(context).pop();
                          },
                          child: new Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                ),
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "PLAY",
                          style: TextStyle(
                            fontFamily: 'Secular_One',
                            letterSpacing: 3,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "VIDEO",
                          style: TextStyle(
                            fontFamily: 'Secular_One',
                            letterSpacing: 3,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Divider(
                          height: 16,
                          thickness: 2,
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigator.of(context).pop();
                          },
                          child: new Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 2, color: Colors.white)),
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "SHOP",
                          style: TextStyle(
                            fontFamily: 'Secular_One',
                            letterSpacing: 3,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "ALL",
                          style: TextStyle(
                            fontFamily: 'Secular_One',
                            letterSpacing: 3,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
