import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String image;
  final double height;
  final double? width;
  final bool isTop;

  const Item({
    Key? key,
    required this.image,
    required this.height,
    this.width,
    this.isTop = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: isTop ? 0.0 : 10.0),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isTop ? 0.0 : 5.0),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  toList() {}
}
