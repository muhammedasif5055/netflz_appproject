import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflz_appproject/application/hotandnew/hot_and_new_bloc.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/pressentation/home/widget/addinfo_btnwiget.dart';

import '../../core/colors/constance.dart';
import '../widgets/app_barwidget.dart';
import 'widgets/comming_soon.dart';
import 'widgets/evryone_waching.dart';
import 'widgets/video_wigets.dart';

class ScreenNewHot extends StatelessWidget {
  const ScreenNewHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
              Icon(
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
            bottom: TabBar(
                labelColor: kcolorblack,
                unselectedLabelColor: kwhitecolor,
                isScrollable: true,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    color: kwhitecolor,
                    borderRadius: BorderRadius.circular(20)),
                tabs: [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's waching",
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
        const  ComingsoonList(key: Key('coming_soonlist'),),
           _buildEveryOnesWatching(),
        ]),
      ),
    );
  }

  _buildEveryOnesWatching() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          itemBuilder: (ctx, index) => SizedBox() ,
          // EveryoneWachingwig(),
          separatorBuilder: (ctx, index) => SizedBox(),
          itemCount: 10),
    );
  }
}

class ComingsoonList extends StatelessWidget {
  const ComingsoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDatainComingSoon());
    });
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          return const Center(
            child: Text('Error while loading coming soon list'),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text('Coming soon list is empty'),
          );
        } else {
          return ListView.builder(
              itemCount: state.comingSoonList.length,
              itemBuilder: (BuildContext context, index) {
                final movie = state.comingSoonList[index];
                if(movie.id==null){
                  return const SizedBox();
                }
                String month ='';
                String date ='';

                try{
                      final _date = DateTime.parse(movie.releaseDate!);
                      final formatedDate =  DateFormat.yMMMMd('en_US').format(_date);
                       month = formatedDate.split(' ').first.substring(0,3).toUpperCase();
                      date = movie.releaseDate!.split('-')[1];
                } catch(_){
                  month = '';
                  date = '';
                }
            
                return ComingsoonWiget(
                  id: movie.id.toString(),
                  month: month ,
                  day: date ,
                  posterpath: '$imageAppendUrl${movie.posterPath}',
                  movieName: movie.originalTitle??'No title',
                  description: movie.overview??'No description',
                );
              });
        }
      },
    );
  }
}
