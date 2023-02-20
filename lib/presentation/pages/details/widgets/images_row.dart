import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

class ImagesRow extends StatelessWidget {
  final String title;
  const ImagesRow({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Styles.headLineStyle.copyWith(fontSize: 26),
          ),
          SizedBox(
            height: h10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 150,
                  width: 100,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
