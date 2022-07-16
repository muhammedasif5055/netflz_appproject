import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflz_appproject/application/search/search_bloc.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/core/colors/constance.dart';

import 'widget/search_titlewiget.dart';

class ScreenIdealWigets extends StatelessWidget {
  const ScreenIdealWigets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Searchtitlewidget(title: 'Top Searches'),
        khight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("Error While geting data"),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text("List Is Empty"),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    final movie = state.idleList[index];
                    return TopsearchItemtitle(
                        title: movie.title ?? 'No Title',
                        imageurl: '$imageAppendUrl${movie.posterPath}');
                  },
                  separatorBuilder: (ctx, index) => khight20,
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopsearchItemtitle extends StatelessWidget {
  final String title;
  final String imageurl;
  const TopsearchItemtitle({
    Key? key,
    required this.title,
    required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreeWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: ScreeWidth * 0.35,
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageurl),
              )),
        ),
        kwidth,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
            color: kwhitecolor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )),
        const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: backgroundColor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhitecolor,
            ),
          ),
        )
      ],
    );
  }
}
