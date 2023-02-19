import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

class CardWidget extends StatelessWidget {
  final bool isImage;
  final String? imageUrl;
  final VoidCallback? onPressed;
  final VoidCallback? infoPressed;
  final VoidCallback? menuPressed;
  const CardWidget(
      {Key? key,
      this.imageUrl,
      required this.isImage,
      this.onPressed,
      this.infoPressed,
      this.menuPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Styles.greyColor,
      margin: EdgeInsets.all(h10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(h10)),
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: onPressed ?? () {},
            child: SizedBox(
              height: h175,
              width: w175,
            ),
          ),
          isImage
              ? Image.network(imageUrl!)
              : Container(
                  height: h1,
                  color: Styles.basicColor,
                  width: w175,
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: infoPressed ?? () {},
                icon: Icon(
                  Icons.info_outline,
                  color: Styles.basicColor,
                ),
              ),
              SizedBox(
                width: w50,
              ),
              IconButton(
                onPressed: menuPressed ?? () {},
                icon: Icon(
                  Icons.menu,
                  color: Styles.basicColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
