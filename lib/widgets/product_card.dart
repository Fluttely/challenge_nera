import "package:flutter/material.dart";
import "dart:ui";
import "package:challenge_nera/widgets/collection_clipper.dart";
import "package:challenge_nera/widgets/clip_shadow_path.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
// import "package:challenge_nera/models/product_model.dart";
// import "package:challenge_nera/utils/consts.dart";
// import "package:challenge_nera/views/details_page.dart";

class ProductCard extends StatelessWidget {
  // ProductCard({this.productsList, this.index, this.isCurrentItem, this.width});
  // final List<ProductModel> productsList;
  int index, isCurrentItem = 0;
  double width = 200;
  Color color1 = Colors.red;
  Color color2 = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 32, 32),
      child: GestureDetector(
        onTap: () {
        },
        child: ClipShadowPath(
          clipper: CollectionClipper(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          shadow: Shadow(
            blurRadius: 24,
            color: Colors.pink.withOpacity(0.2),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  index == isCurrentItem ? color1 : color1.withOpacity(0.8),
                  index == isCurrentItem ? color2 : color2.withOpacity(0.8),
                ],
              ),
            ),
            width: width,
          ),
        ),
      ),
    );
  }
}
