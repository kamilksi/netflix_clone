import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/buttons_row.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/detail_header.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/overview_widget.dart';

class DetailsPageBody extends StatelessWidget {
  final String? overview;
  final String? title;
  final double? voteAverage;
  final String? releaseDate;
  final String? imgUrl;
  const DetailsPageBody({
    Key? key,
    this.overview,
    this.title,
    this.releaseDate,
    this.voteAverage,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DetailHeader(
            title: title,
            whenRelease: releaseDate,
            imgUrl: imgUrl,
          ),
          ButtonsRow(userScore: voteAverage ?? 0),
          OverviewWidget(
            description: overview,
          ),
        ],
      ),
    );
  }
}
