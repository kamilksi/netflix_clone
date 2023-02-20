import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

const String nowStreaming = "Now Streaming";
const String watchNow = "Watch Now";

class DetailHeader extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? whenRelease;
  final String? genre;
  final String? lengthVideo;
  final Color? colorService;
  final bool isStreaming;
  const DetailHeader({
    Key? key,
    this.imgUrl,
    this.title,
    this.whenRelease,
    this.genre,
    this.lengthVideo,
    this.colorService,
    required this.isStreaming,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          child: Image.network(
              imgUrl ??
                  'https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg',
              fit: BoxFit.cover),
        ),
        // !Watch now
        isStreaming
            ? Container(
                decoration:
                    BoxDecoration(color: colorService ?? Colors.blueGrey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple),
                    SizedBox(
                      width: 10,
                    ),
                    // Watch now
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nowStreaming),
                        Text(
                          watchNow,
                          style: Styles.textStyle,
                        )
                      ],
                    ),
                  ],
                ),
              )
            : SizedBox.shrink(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Tytul filmu
                  Text(
                    title ?? "Title",
                    style: Styles.headLineStyle.copyWith(fontSize: 36),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    whenRelease ?? "Release year",
                    style: Styles.textStyle.copyWith(fontSize: 36),
                  ),
                ],
              ),
              Text("${genre ?? "Genre"}, ${lengthVideo ?? "2h 42m"} "),
            ],
          ),
        ),
      ],
    );
  }
}
