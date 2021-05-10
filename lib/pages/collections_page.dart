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

// class CollectionsPage extends StatelessWidget {
// ShapeBorder shape; // = RectangleShapeBorder();
// String jsonStr = jsonDecode('{"type":"Rectangle","border":{"color":"ff9c27b0","width":0,"style":"solid","end":"0%","shift":"0%","strokeCap":"butt","strokeJoin":"miter"},"borderRadius":{"topLeft":{"x":"50%","y":"50%"},"topRight":{"x":"50%","y":"50%"},"bottomLeft":{"x":"50%","y":"50%"},"bottomRight":{"x":"50%","y":"50%"}},"cornerStyles":{"topLeft":"straight","bottomLeft":"straight","topRight":"straight","bottomRight":"straight"}}');
// ShapeBorder shapeDecoded = parseShapeBorder(jsonDecode('{"type":"Rectangle","border":{"color":"ff9c27b0","width":0,"style":"solid","end":"0%","shift":"0%","strokeCap":"butt","strokeJoin":"miter"},"borderRadius":{"topLeft":{"x":"50%","y":"50%"},"topRight":{"x":"50%","y":"50%"},"bottomLeft":{"x":"50%","y":"50%"},"bottomRight":{"x":"50%","y":"50%"}},"cornerStyles":{"topLeft":"straight","bottomLeft":"straight","topRight":"straight","bottomRight":"straight"}}'));
class CollectionsPage extends StatefulWidget {
  @override
  _CollectionsPageState createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;
  bool isActive5 = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth >= 880
            ? Container(
                color: Colors.black, //Color(0XFF4f104a), //Color(0XFF332134),//
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: ClipShadowPath(
                        clipper: BannerClipper(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.height,
                        ),
                        shadow: Shadow(
                          blurRadius: 6,
                          color: Colors.white.withOpacity(0.6),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.6),
                                    BlendMode.dstATop,
                                  ),
                                  image: AssetImage(
                                    'assets/images/2.2.jpg',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 64,
                              child: Container(
                                // padding: EdgeInsets.only(left: 94),
                                height: MediaQuery.of(context).size.height,
                                child: Center(
                                  child: Text(
                                    "COLLECTIONS",
                                    style: TextStyle(
                                      // letterSpacing: 5,
                                      color: Colors.white,
                                      fontFamily: 'Lexend_Zetta',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 74,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Transform.rotate(
                        angle: -math.pi / 4,
                        child: Container(
                          // padding: EdgeInsets.only(top:6),
                          height: MediaQuery.of(context).size.height -
                              MediaQuery.of(context).size.height / 42,
                          width: MediaQuery.of(context).size.height -
                              MediaQuery.of(context).size.height / 42,
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
                                        padding: const EdgeInsets.all(22.0),
                                        child: Stack(
                                          children: [
                                            AspectRatio(
                                                aspectRatio: 1,
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      8, 0, 0, 8),
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
                                                  duration:
                                                      Duration(milliseconds: 200),
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
                                                        height:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .height,
                                                        width:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .width,
                                                        decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            colorFilter:
                                                                ColorFilter.mode(
                                                              Colors.black
                                                                  .withOpacity(
                                                                      0.6),
                                                              BlendMode.dstATop,
                                                            ),
                                                            image: AssetImage(
                                                              'assets/images/c.jpg',
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.white
                                                                  .withOpacity(
                                                                      0.6),
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
                                                              fontFamily:
                                                                  'Secular_One',
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
                              Container(
                                      width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(22.0),
                                        child: Stack(
                                          children: [
                                            AspectRatio(
                                              aspectRatio: 1,
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    8, 0, 0, 8),
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
                                                  duration:
                                                      Duration(milliseconds: 200),
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
                                                        height:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .height,
                                                        width:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .width,
                                                        decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            colorFilter:
                                                                ColorFilter.mode(
                                                              Colors.black
                                                                  .withOpacity(
                                                                      0.6),
                                                              BlendMode.dstATop,
                                                            ),
                                                            image: AssetImage(
                                                              'assets/images/f.jpg',
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.white
                                                                  .withOpacity(
                                                                      0.6),
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
                                                              fontFamily:
                                                                  'Secular_One',
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
                                        padding: const EdgeInsets.all(22.0),
                                        child: Stack(
                                          children: [
                                            AspectRatio(
                                              aspectRatio: 1,
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    8, 0, 0, 8),
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
                                                  duration:
                                                      Duration(milliseconds: 200),
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
                                                        height:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .height,
                                                        width:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .width,
                                                        decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            colorFilter:
                                                                ColorFilter.mode(
                                                              Colors.black
                                                                  .withOpacity(
                                                                      0.6),
                                                              BlendMode.dstATop,
                                                            ),
                                                            image: AssetImage(
                                                              'assets/images/a.jpg',
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.white
                                                                  .withOpacity(
                                                                      0.6),
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
                                                              fontFamily:
                                                                  'Secular_One',
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
                                        padding: const EdgeInsets.all(22.0),
                                        child: Stack(
                                          children: [
                                            AspectRatio(
                                              aspectRatio: 1,
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    8, 0, 0, 8),
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
                                                  duration:
                                                      Duration(milliseconds: 200),
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
                                                        height:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .height,
                                                        width:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .width,
                                                        decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            colorFilter:
                                                                ColorFilter.mode(
                                                              Colors.black
                                                                  .withOpacity(
                                                                      0.6),
                                                              BlendMode.dstATop,
                                                            ),
                                                            image: AssetImage(
                                                              'assets/images/d.jpg',
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.white
                                                                  .withOpacity(
                                                                      0.6),
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
                                                              fontFamily:
                                                                  'Secular_One',
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
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Transform.rotate(
                                        angle: math.pi / 4,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 64.0),
                                            child: TextButton(
                                                child: Text(
                                                  "SHOP ALL",
                                                  style: TextStyle(
                                                    letterSpacing: 5,
                                                    fontSize: 14,
                                                    fontFamily: 'Secular_One',
                                                  ),
                                                ),
                                                style: ButtonStyle(
                                                  padding: MaterialStateProperty
                                                      .all<EdgeInsets>(
                                                          EdgeInsets.fromLTRB(
                                                              50, 25, 50, 25)),
                                                  foregroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(Colors.white),
                                                  shape:
                                                      MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              60.0),
                                                      side: BorderSide(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () => null),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(22.0),
                                      child: Stack(
                                        children: [
                                          AspectRatio(
                                            aspectRatio: 1,
                                            child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 0, 0, 8),
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
                                                  duration: Duration(
                                                      milliseconds: 200),
                                                  height: double.infinity,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      top: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width:
                                                            isActive5 ? 8 : 0,
                                                      ),
                                                      right: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width:
                                                            isActive5 ? 8 : 0,
                                                      ),
                                                      bottom: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width:
                                                            isActive5 ? 0 : 8,
                                                      ),
                                                      left: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width:
                                                            isActive5 ? 0 : 8,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        height: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            colorFilter:
                                                                ColorFilter
                                                                    .mode(
                                                              Colors.black
                                                                  .withOpacity(
                                                                      0.6),
                                                              BlendMode.dstATop,
                                                            ),
                                                            image: AssetImage(
                                                              'assets/images/b.jpg',
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.6),
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
                                                              fontFamily:
                                                                  'Secular_One',
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : CollectionsMobile();
            // Container(
            //     color: Colors.green,
            //     height: MediaQuery.of(context).size.height,
            //   );
      },
    );
  }
}
