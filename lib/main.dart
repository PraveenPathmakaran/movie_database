import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_db/application/downloads/downloads_bloc.dart';
import 'package:movie_db/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:movie_db/application/search/search_bloc.dart';

import 'core/colors/colors.dart';
import 'domain/di/injectable.dart';
import 'presentation/main_page/screen_main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DownloadsBloc>(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider<SearchBloc>(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider<FastLaughBloc>(create: (ctx) => getIt<FastLaughBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenMainPage(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: backgroundColor,
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white)),
            fontFamily: GoogleFonts.montserrat().fontFamily),
      ),
    );
  }
}
