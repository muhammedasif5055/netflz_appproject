import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflz_appproject/application/downloads/downloads_bloc.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/domin/core/di/injectable.dart';
import 'package:netflz_appproject/pressentation/main_page/screen_mainpage.dart';
import 'application/fastlafe/fast_lafe_bloc.dart';
import 'application/home/home_bloc.dart';
import 'application/hotandnew/hot_and_new_bloc.dart';
import 'application/search/search_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await congigureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLafeBloc>()),
        BlocProvider(create: (ctx) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>())

      ],
      child: MaterialApp(
        title: 'Netfliz App',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            scaffoldBackgroundColor: backgroundColor,
            primarySwatch: Colors.blue,
            backgroundColor: Colors.black,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            textTheme: const TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white))),
        home: ScreenMainPage(),
      ),
    );
  }
}
