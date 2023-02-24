import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

const String _overview = "Overview";

class OverviewWidget extends StatelessWidget {
  final String? description;
  final String? name;
  final String? role;
  const OverviewWidget({
    Key? key,
    this.description,
    this.name,
    this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _overview,
            style: Styles.headLineStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText(description ??
              "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives."),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
