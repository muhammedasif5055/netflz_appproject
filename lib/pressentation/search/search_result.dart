import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflz_appproject/application/search/search_bloc.dart';
import 'package:netflz_appproject/core/colors/constance.dart';
import 'package:netflz_appproject/pressentation/search/widget/search_titlewiget.dart';

class ScreenSearchResul extends StatelessWidget {
  const ScreenSearchResul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtitlewidget(title: 'Movies & TV'),
        khight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.2 / 1.5,
              children: List.generate(20, (index) {
                final movie = state.serachResultList[index];
                return MainCard(searchimgurl: movie.posterImageUrl);
              }),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String searchimgurl;
  const MainCard({Key? key, required this.searchimgurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(searchimgurl), fit: BoxFit.cover)),
    );
  }
}
