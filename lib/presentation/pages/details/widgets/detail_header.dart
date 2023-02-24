import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

const String nowStreaming = "Now Streaming";
const String watchNow = "Watch Now";

class DetailHeader extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? whenRelease;
  final String? genre;
  final String? lengthVideo;

  const DetailHeader({
    Key? key,
    this.imgUrl,
    this.title,
    this.whenRelease,
    this.genre,
    this.lengthVideo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 500,
          width: double.infinity,
          child: Image.network(
              imgUrl ??
                  'https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg',
              fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(padding10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                "${title ?? "Title"} ${whenRelease ?? "Release year"}",
                textAlign: TextAlign.left,
                style: Styles.headLineStyle,
                presetFontSizes: [26, 28, 30, 32],
                maxLines: 3,
              ),
              AutoSizeText(
                "${genre ?? "Genre"}, ${lengthVideo ?? "2h 42m"} ",
                textAlign: TextAlign.left,
                presetFontSizes: [14, 16, 18],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
