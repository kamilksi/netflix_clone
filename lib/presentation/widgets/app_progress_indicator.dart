import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          height: h50,
          width: w50,
          child: Padding(
            padding: EdgeInsets.all(padding10),
            child: CircularProgressIndicator(color: Colors.white24),
          ),
        ),
      );
}
