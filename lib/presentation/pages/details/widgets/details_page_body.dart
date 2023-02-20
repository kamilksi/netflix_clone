import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/buttons_row.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/detail_header.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/images_row.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/overview_widget.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          DetailHeader(
              isStreaming: true, title: "Black Panther", whenRelease: "(2023)"),
          ButtonsRow(userScore: "100"),
          OverviewWidget(),
          ImagesRow(title: "Top Billed Cast"),
          ImagesRow(title: "Related videos"),
        ],
      ),
    );
  }
}
