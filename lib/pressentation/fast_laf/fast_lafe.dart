import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflz_appproject/application/fastlafe/fast_lafe_bloc.dart';
import 'package:netflz_appproject/pressentation/fast_laf/widgets/videolistitem.dart';

class ScreenFastLafe extends StatelessWidget {
  const ScreenFastLafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLafeBloc>(context).add(const Initialize());
    });
    return Scaffold(
        body: SafeArea(child: BlocBuilder<FastLafeBloc, FastLafeState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.isError) {
          return const Center(
            child: Text('Error While detting data'),
          );
        } else if (state.videosList.isEmpty) {
          return const Center(
            child: Text('list is empty'),
          );
        } else {
          return PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(state.videosList.length, (index) {
              return VideoListItemInheritedwidet(
                  wdget: VideoListItem(
                    key: Key(index.toString()),
                    index: index,
                  ),
                  movieData: state.videosList[index]);
            }),
          );
        }
      },
    )));
  }
}
