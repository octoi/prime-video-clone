import 'package:app/widgets/item.dart';
import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  final String title;
  final List<String> images;
  final double height;
  final double width;

  const MovieList({
    Key? key,
    required this.title,
    required this.images,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: images
                  .map(
                    (image) => Item(
                      image: image,
                      height: height,
                      width: width,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
