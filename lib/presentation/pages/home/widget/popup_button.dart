import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

const String kategorie = "Kategorie";

class PopupButton extends StatelessWidget {
  const PopupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        child: Container(
          padding: EdgeInsets.all(h6),
          decoration: BoxDecoration(
              border: Border.all(color: Styles.basicColor),
              borderRadius: BorderRadius.circular(h20),
              shape: BoxShape.rectangle),
          child: Row(
            children: [
              Text(
                kategorie,
                style: Styles.textStyle,
              ),
              SizedBox(
                width: w10,
              ),
              Icon(
                Icons.arrow_downward,
                color: Styles.basicColor,
              ),
            ],
          ),
        ),
        itemBuilder: (BuildContext context) => const [
              PopupMenuItem(child: Text("Item")),
              PopupMenuItem(child: Text("Item 2")),
              PopupMenuItem(child: Text("Item 3")),
            ]);
  }
}
