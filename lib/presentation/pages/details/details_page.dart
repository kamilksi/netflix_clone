import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/details_page_body.dart';
import 'package:netflix_clone/presentation/widgets/app_scaffold.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      canGoBack: true,
      backgroundColor: Colors.white24,
      child: DetailsPageBody(),
    );
  }
}
