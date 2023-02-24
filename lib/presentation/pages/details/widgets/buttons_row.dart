import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/details/widgets/detail_button.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

const user = "User";
const score = "Score";

class ButtonsRow extends StatelessWidget {
  final VoidCallback? listPress;
  final VoidCallback? favPress;
  final VoidCallback? bookmarkPress;
  final double userScore;
  const ButtonsRow(
      {Key? key,
      required this.userScore,
      this.listPress,
      this.favPress,
      this.bookmarkPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double uScore = userScore / 10;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularPercentIndicator(
            radius: 45,
            lineWidth: 5,
            progressColor: uScore > 0.61
                ? Colors.green
                : uScore > 0.4
                    ? Colors.yellow
                    : Colors.red,
            percent: uScore,
            center: Text(
              "${userScore * 10}%",
              style: Styles.headLineStyle,
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
