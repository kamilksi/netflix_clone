import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/details_page_body.dart';
import 'package:netflix_clone/presentation/widgets/app_scaffold.dart';

class DetailsPage extends StatelessWidget {
  final String? overview;
  final String? title;
  final double? voteAverage;
  final String? releaseDate;
  final String? imgUrl;
  const DetailsPage({
    Key? key,
    this.overview,
    this.title,
    this.releaseDate,
    this.voteAverage,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      canGoBack: true,
      backgroundColor: Colors.white24,
      child: DetailsPageBody(
        overview: overview,
        title: title,
        voteAverage: voteAverage,
        releaseDate: releaseDate,
        imgUrl: imgUrl,
      ),
    );
  }
}
