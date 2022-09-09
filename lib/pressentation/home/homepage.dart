import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/core/colors/constance.dart';
import 'package:netflz_appproject/pressentation/home/widget/addinfo_btnwiget.dart';
import 'package:netflz_appproject/pressentation/home/widget/backgroundcard.dart';
import 'package:netflz_appproject/pressentation/home/widget/number_cardwiget.dart';
import 'package:netflz_appproject/pressentation/home/widget/numberwiget.dart';
import 'package:netflz_appproject/pressentation/widgets/main_cardwigdjet.dart';
import 'package:netflz_appproject/pressentation/widgets/main_title.dart';
import '../../application/home/home_bloc.dart';
import '../widgets/title_cardwiget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      );
                    } else if (state.hasError) {
                      return const Center(
                        child: Text(
                          'Error while geting Data',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }
                    //pastyear
                    final _releasesPastYear = state.pastYearMovieList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();

                    //trending
                    final _trending = state.trndingMovesList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();

                    //tensdrama
                    final _tensDrama = state.tenseMovieList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();

                    //southindianmoves
                    final _southIndianmoves =
                        state.southIndianMovieList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();
                    final _topTvShows =state.trendingTvList.map((t){
                      return '$imageAppendUrl${t.posterPath}';
                    },).toList();
                    final _bgposter =state.trendingTvList.map((t){
                      return '$imageAppendUrl${t.posterPath}';
                    },).toList();
                    _topTvShows.shuffle();
                    _southIndianmoves.shuffle();
                    _tensDrama.shuffle();

                    return ListView(
                      children: [
                         if (_bgposter.length >= 1)
                        Backgroundcardwiger(imagUrl:_bgposter[1],),
                        if (_releasesPastYear.length >= 10)
                          Titlecard_wiget(
                            title: 'Released in the past year',
                            posterList: _releasesPastYear.sublist(0, 10),
                          ),
                        khight,
                         if (_trending.length >= 10)
                        Titlecard_wiget(
                          title: 'Trending Now',
                          posterList: _trending.sublist(0, 10),
                        ),
                        khight,
                         if (_topTvShows.length >= 10)
                        NumberWigectcard(
                          posterList: _topTvShows,
                        ),
                        khight,
                         if (_tensDrama.length >= 10)
                        Titlecard_wiget(
                          title: 'Tense Dramas',
                          posterList: _tensDrama.sublist(0, 10),
                        ),
                        khight,
                         if (_southIndianmoves.length >= 10)
                        Titlecard_wiget(
                          title: 'South Indian Cinemas',
                          posterList: _southIndianmoves.sublist(0, 10),
                        ),
                      ],
                    );
                  },
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(microseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(children: [
                          Row(
                            children: [
                              Image.network(
                                "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
                                width: 50,
                                height: 50,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                                size: 30,
                              ),
                              kwidth,
                              Container(
                                width: 25,
                                height: 25,
                                color: Colors.blue,
                              ),
                              kwidth,
                            ],
                          ),
                          khight,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Tv Shows",
                                style: kHometitle,
                              ),
                              Text(
                                "Movies",
                                style: kHometitle,
                              ),
                              Text("Categoriese", style: kHometitle),
                            ],
                          )
                        ]),
                      )
                    : khight,
              ],
            ),
          );
        },
      ),
    );
  }
}
