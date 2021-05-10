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

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  bool isHover1 = false;
  bool isActive1 = false;

  bool isHover2 = false;
  bool isActive2 = false;

  bool isHover3 = false;
  bool isActive3 = false;

  bool isHover4 = false;
  bool isActive4 = false;

  Color _borderColor1() {
    if (isActive1) {
      return Colors.white.withOpacity(0.5);
    } else if (valueListTitle == 0) {
      return Colors.white.withOpacity(0.5);
    }
    return Colors.transparent;
  }

  Color _borderColor2() {
    if (isActive2) {
      return Colors.white.withOpacity(0.5);
    } else if (valueListTitle == 2) {
      return Colors.white.withOpacity(0.5);
    }
    return Colors.transparent;
  }

  Color _borderColor3() {
    if (isActive3) {
      return Colors.white.withOpacity(0.5);
    }
    return Colors.transparent;
  }

  Color _borderColor4() {
    if (isActive4) {
      return Colors.white.withOpacity(0.5);
    }
    return Colors.transparent;
  }

  final scrollDirection = Axis.vertical;
  AutoScrollController _autoScrollController;
  double percent = 0;
  var valueListTitle = 0;
  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _autoScrollController.dispose();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({int index, Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
      highlightColor: Colors.white.withOpacity(0.1),
    );
  }

  onNotificationScroll(scrollInfo) {
    percent =
        ((scrollInfo.metrics.pixels / scrollInfo.metrics.maxScrollExtent) *
            100);
    setState(() {
      if (percent >= 100) {
        valueListTitle = 2;
      } else if (percent > 3) {
        valueListTitle = 1;
      } else {
        valueListTitle = 0;
      }
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(),
      CollectionsPage(),
      Container(
        height: MediaQuery.of(context).size.height,
      ),
      Container(
        height: MediaQuery.of(context).size.height,
      ),
      Container(
        height: MediaQuery.of(context).size.height,
      ),
    ];
    final double _position = (MediaQuery.of(context).size.height) / 100;
    return Scaffold(
      backgroundColor: Color(0XFF1f1a22),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: pages.length * 52.0,
              child: ListView.builder(
                itemCount: pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return index == 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              ListTile(
                                dense: true,
                                title: Text(
                                  "Home Page".toString(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                selected: valueListTitle == index,
                                onTap: () {
                                  _scrollToIndex(index);
                                  setState(() {
                                    valueListTitle = index;
                                  });
                                },
                              )
                            ])
                      : ListTile(
                          dense: true,
                          title: Text(
                            "Collections Page",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          selected: valueListTitle == index,
                          onTap: () {
                            _scrollToIndex(index);
                            setState(() {
                              valueListTitle = index;
                            });
                          },
                        );
                },
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              NotificationListener(
                onNotification: (ScrollNotification scrollInfo) =>
                    onNotificationScroll(scrollInfo),
                child: ListView.builder(
                  itemCount: 2,//pages.length,
                  physics: BouncingScrollPhysics(),
                  controller: _autoScrollController,
                  itemBuilder: (BuildContext context, int index) {
                    return _wrapScrollTag(
                      index: index,
                      child: pages[index],
                    );
                  },
                ),
              ),
              constraints.maxWidth >= 880
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 64,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "NERA",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontFamily: 'Lexend_Zetta',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(flex: 10),
                              InkWell(
                                onTap: () {
                                  _scrollToIndex(0);
                                  setState(() {
                                    valueListTitle = 0;
                                  });
                                },
                                onHover: (value) {
                                  setState(() {
                                    isActive1 = value;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 100),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 16 / 1.1),
                                  padding:
                                      EdgeInsets.symmetric(vertical: 16 / 2),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: _borderColor1(), width: 3),
                                    ),
                                  ),
                                  child: Text(
                                    "NEW ARRIVALS",
                                    style: TextStyle(
                                      letterSpacing: 3,
                                      fontSize: 16,
                                      fontFamily: 'Secular_One',
                                    ),
                                  ),
                                ),
                              ), // Text(
                              Spacer(flex: 2),
                              InkWell(
                                onTap: () {
                                  _scrollToIndex(1);
                                  setState(() {
                                    valueListTitle = 1;
                                  });
                                },
                                onHover: (value) {
                                  setState(() {
                                    isActive2 = value;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 100),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 16 / 1.1),
                                  padding:
                                      EdgeInsets.symmetric(vertical: 16 / 2),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: _borderColor2(), width: 3),
                                    ),
                                  ),
                                  child: Text(
                                    "COLLECTIONS",
                                    style: TextStyle(
                                      letterSpacing: 3,
                                      fontSize: 16,
                                      fontFamily: 'Secular_One',
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(flex: 2),
                              InkWell(
                                onTap: () {
                                  _scrollToIndex(2);
                                  setState(() {
                                    valueListTitle = 2;
                                  });
                                },
                                onHover: (value) {
                                  setState(() {
                                    isActive3 = value;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 100),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 16 / 1.1),
                                  padding:
                                      EdgeInsets.symmetric(vertical: 16 / 2),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: _borderColor3(), width: 3),
                                    ),
                                  ),
                                  child: Text(
                                    "SALE",
                                    style: TextStyle(
                                      letterSpacing: 3,
                                      fontSize: 16,
                                      fontFamily: 'Secular_One',
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(flex: 2),
                              InkWell(
                                onTap: () {
                                  _scrollToIndex(3);
                                  setState(() {
                                    valueListTitle = 3;
                                  });
                                },
                                onHover: (value) {
                                  setState(() {
                                    isActive4 = value;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 100),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 16 / 1.1),
                                  padding:
                                      EdgeInsets.symmetric(vertical: 16 / 2),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: _borderColor4(), width: 3),
                                    ),
                                  ),
                                  child: Text(
                                    "SHOP",
                                    style: TextStyle(
                                      letterSpacing: 3,
                                      fontSize: 16,
                                      fontFamily: 'Secular_One',
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 4,
                              ),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                                size: 28,
                              ),
                              Spacer(),
                              Container(
                                height: 24,
                                width: 24,
                                child: SvgPicture.asset(
                                  'assets/ui_icons/svg/097-user.svg',
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 24,
                                width: 30,
                                child: SvgPicture.asset(
                                  'assets/purple/menu.svg',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              valueListTitle == 0
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/logo/nera.png',
                                          width: 740,
                                        ),
                                      ],
                                    )
                                  : Container(),
                              Spacer(),
                            ],
                          ),
                          Spacer(),
                          valueListTitle == 0
                              ? Row(
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
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.white)),
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      "PLAY VIDEO",
                                      style: TextStyle(
                                        fontFamily: 'Secular_One',
                                        letterSpacing: 3,
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 32,
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
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.white)),
                                          child: Icon(
                                            Icons.shopping_bag_outlined,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      "SHOP NOW",
                                      style: TextStyle(
                                        fontFamily: 'Secular_One',
                                        letterSpacing: 3,
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Spacer(flex: 12),
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
                                    // SizedBox(
                                    //   width: 32,
                                    // ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                    )
                  : MobileLayout(valueListTitle: valueListTitle),
              constraints.maxWidth >= 880
                  ? Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              height: 200,
                              width: 40,
                              child: FlutterSlider(
                                axis: Axis.vertical,
                                values: [percent],
                                min: 0,
                                max: 100,
                                tooltip: FlutterSliderTooltip(
                                  textStyle: TextStyle(
                                      fontSize: 0, color: Colors.transparent),
                                  boxStyle: FlutterSliderTooltipBox(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                                trackBar: FlutterSliderTrackBar(
                                  inactiveTrackBar:
                                      BoxDecoration(color: Colors.white),
                                  activeTrackBar:
                                      BoxDecoration(color: Colors.white),
                                ),
                                handler: FlutterSliderHandler(
                                  decoration: BoxDecoration(),
                                  child: Material(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    type: MaterialType.canvas,
                                    color: Colors.white,
                                    elevation: 10,
                                    child: Container(
                                      padding: EdgeInsets.all(1),
                                      child: Icon(
                                        Icons.circle,
                                        size: 20,
                                        color: Color(0XFF332134),
                                      ),
                                    ),
                                  ),
                                ),
                                onDragging:
                                    (handlerIndex, lowerValue, upperValue) {
                                  percent = lowerValue;
                                  _autoScrollController.animateTo(
                                      _position * percent,
                                      duration: Duration(milliseconds: 100),
                                      curve: Curves.bounceIn);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
              Spacer(),
            ],
          );
        },
      ),
    );
  }
}
