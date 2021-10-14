import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String image;
  final double height;
  final double? width;

  const Item({
    Key? key,
    required this.image,
    required this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  toList() {}
}
