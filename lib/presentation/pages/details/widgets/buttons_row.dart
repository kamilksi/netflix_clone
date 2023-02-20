import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/detail_button.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

const user = "User";
const score = "Score";

class ButtonsRow extends StatelessWidget {
  final String userScore;
  final VoidCallback? listPress;
  final VoidCallback? favPress;
  final VoidCallback? bookmarkPress;
  const ButtonsRow(
      {Key? key,
      required this.userScore,
      this.listPress,
      this.favPress,
      this.bookmarkPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white24,
              border: Border.all(color: Colors.green, width: 4),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userScore,
                    style: Styles.headLineStyle,
                  ),
                  Text(
                    "%",
                    textScaleFactor: 0.7,
                    style: Styles.textStyle,
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user,
                style: Styles.textStyle,
              ),
              Text(
                score,
                style: Styles.textStyle,
              )
            ],
          ),
          DetailButton(
            iconButton: const Icon(Icons.list),
            onTap: listPress,
          ),
          DetailButton(
            iconButton: const Icon(CupertinoIcons.heart_fill),
            onTap: favPress,
          ),
          DetailButton(
            iconButton: const Icon(Icons.bookmark),
            onTap: bookmarkPress,
          ),
        ],
      ),
    );
  }
}
