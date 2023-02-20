import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';

class DetailButton extends StatelessWidget {
  final Icon iconButton;
  final VoidCallback? onTap;
  const DetailButton({Key? key, required this.iconButton, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap ?? () {},
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(padding10),
          backgroundColor: Colors.white24,
          foregroundColor: Colors.white),
      child: iconButton,
    );
  }
}
