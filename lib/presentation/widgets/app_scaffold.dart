import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final List<Widget>? actions;
  final bool canGoBack;
  final Widget? title;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  const AppScaffold({
    Key? key,
    required this.child,
    this.actions,
    required this.canGoBack,
    this.title,
    this.onTap,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: title,
          backgroundColor: backgroundColor ?? Styles.greyColor,
          centerTitle: false,
          leading: canGoBack
              ? Padding(
                  padding: const EdgeInsets.all(padding5),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(borderRadius20),
                    onTap: onTap ?? context.router.pop,
                    child: const Center(
                      child: Icon(Icons.arrow_back_ios, color: Colors.black),
                    ),
                  ),
                )
              : null,
          actions: actions ?? [],
        ),
        body: SafeArea(
          minimum: EdgeInsets.only(bottom: padding10),
          child: child,
        ),
      );
}
