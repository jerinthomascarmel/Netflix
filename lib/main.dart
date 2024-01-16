import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';
import 'domain/core/di/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart  ';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FastLaughBloc>(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          scaffoldBackgroundColor: backgroundColor,
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),
        debugShowCheckedModeBanner: false,
        home: ScreenMainPage(),
      ),
    );
  }
}
