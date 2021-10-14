import 'package:app/utils/images.dart';
import 'package:app/widgets/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: topImages
            .map((image) => Item(
                  image: image,
                  height: 220.0,
                  isTop: true,
                ))
            .toList(),
      ),
    );
  }
}
