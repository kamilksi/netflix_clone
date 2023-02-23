import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/injectable/injectable.dart';
import 'package:netflix_clone/presentation/pages/home/cubit/home_cubit.dart';
import 'package:netflix_clone/presentation/pages/home/widget/home_page_body.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';
import 'package:netflix_clone/presentation/widgets/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text(dlaCiebie, style: Styles.headLineStyle),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
      ],
      canGoBack: false,
      child: BlocProvider(
        create: (_) => getIt<HomeCubit>()..init(),
        child: const HomePageBody(),
      ),
    );
  }
}
