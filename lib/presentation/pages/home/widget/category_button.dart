import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const CategoryButton({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(h20),
              side: BorderSide(color: Styles.basicColor)),
        ),
      ),
      onPressed: onTap ?? () {},
      child: Text(
        text,
        style: Styles.textStyle,
      ),
    );
  }
}
