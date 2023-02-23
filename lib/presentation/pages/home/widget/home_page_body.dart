import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/presentation/pages/home/cubit/home_cubit.dart';
import 'package:netflix_clone/presentation/pages/home/cubit/home_state.dart';
import 'package:netflix_clone/presentation/pages/home/widget/card_widget.dart';
import 'package:netflix_clone/presentation/pages/home/widget/category_button.dart';
import 'package:netflix_clone/presentation/utils/app_sizes.dart';
import 'package:netflix_clone/presentation/utils/app_styles.dart';
import 'package:netflix_clone/presentation/utils/router/app_router.dart';

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
      builder: (BuildContext context, HomeState state) => ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(h10),
            child: Row(
              children: [
                CategoryButton(text: filmy),
                SizedBox(
                  width: 10,
                ),
                CategoryButton(text: seriale),
                SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
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
                        ]),
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardWidget(
                  isImage: true,
                  imageUrl: 'https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg',
                  onPressed: () async {
                    await context.router.push(const DetailsRoute());
                  },
                ),
                CardWidget(
                  isImage: false,
                  onPressed: () async {
                    await context.router.push(const DetailsRoute());
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: padding10, left: padding10),
            child: Text(
              anime,
              style: Styles.headLineStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardWidget(
                  isImage: false,
                  onPressed: () async {
                    await context.router.push(const DetailsRoute());
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: padding10, top: padding10),
            child: Text(
              obejrzyj,
              style: Styles.headLineStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardWidget(
                  isImage: false,
                  onPressed: () async {
                    await context.router.push(const DetailsRoute());
                  },
                ),
                CardWidget(
                  isImage: false,
                  onPressed: () async {
                    await context.router.push(const DetailsRoute());
                  },
                ),
                CardWidget(
                  isImage: false,
                  onPressed: () async {
                    await context.router.push(const DetailsRoute());
                  },
                ),
                CardWidget(
                  isImage: false,
                  onPressed: () async {
                    await context.router.push(const DetailsRoute());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
