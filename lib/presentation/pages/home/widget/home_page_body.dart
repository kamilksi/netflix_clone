import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/domain/entities/response/movie.dart';
import 'package:netflix_clone/presentation/pages/home/cubit/home_cubit.dart';
import 'package:netflix_clone/presentation/pages/home/cubit/home_state.dart';
import 'package:netflix_clone/presentation/pages/home/widget/card_widget.dart';
import 'package:netflix_clone/presentation/pages/home/widget/category_button.dart';
import 'package:netflix_clone/presentation/pages/home/widget/popup_button.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';
import 'package:netflix_clone/presentation/utils/router/app_router.dart';
import 'package:netflix_clone/presentation/widgets/app_progress_indicator.dart';
import 'package:netflix_clone/presentation/widgets/app_scaffold.dart';

const String seriale = "Seriale";
const String filmy = "Filmy";
const String kategorie = "Kategorie";
const String popularne = "Popularne Teraz";
const String anime = "Japońskie Anime";
const String obejrzyj = "Obejrzyj ponownie";
const String dlaCiebie = "Dla Ciebie, [imie]";

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext context, HomeState state) => state.map(
            initial: (state) => const AppProgressIndicator(),
            loading: (state) => const AppProgressIndicator(),
            success: (state) => _build(context, state.moviesList),
            error: (state) => Center(
                  child: Text(state.error.toString()),
                )));
  }
}

Widget _build(BuildContext context, List<Movie> moviesList) =>
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(h10),
            child: Row(
              children: const [
                CategoryButton(text: filmy),
                SizedBox(
                  width: 10,
                ),
                CategoryButton(text: seriale),
                SizedBox(
                  width: 10,
                ),
                PopupButton(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              popularne,
              style: Styles.headLineStyle,
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: moviesList.length,
                itemBuilder: (context, index) => CardWidget(
                      isImage: true,
                      imageUrl:
                          "https://image.tmdb.org/t/p/w300/${moviesList[index].posterPath}",
                      onPressed: () async {
                        await context.router.push(DetailsRoute());
                      },
                    )),
          ),
        ],
      ),
    );
