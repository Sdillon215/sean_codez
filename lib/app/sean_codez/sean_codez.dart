import 'package:sean_codez/app/sean_codez/portfolio_scaffold/portfolio_scaffold.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:sean_codez/app/sean_codez/modules/modules.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vrouter/vrouter.dart';
import 'package:google_fonts/google_fonts.dart';

const mobileBreakpoint = 600;
const tabletBreakpoint = 1200;
const desktopBreakpoint = 1600;

class SeanCodez extends StatelessWidget {
  const SeanCodez({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        MultiBlocProvider(
          providers: [
            BlocProvider<SeanCodezBloc>(
              create: (context) => SeanCodezBloc(),
              lazy: false,
            ),
          ],
          child:
        Builder(
      builder: (context) => VRouter(
        mode: VRouterMode.history,
        debugShowCheckedModeBanner: false,
        title: 'SeanCodez',
        themeMode: context.select((SeanCodezBloc bloc) => bloc.state.darkTheme)
            ? ThemeMode.dark
            : ThemeMode.light,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: const Color(0xFF111928),
          primaryColorLight: const  Color(0xFFFFFFFF),
          primaryColorDark: Color.fromARGB(255, 0, 22, 61),
          fontFamily: GoogleFonts.heebo().fontFamily,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          primaryColor: const Color.fromARGB(255, 0, 0, 0),
          primaryColorLight: const Color(0xFFFFFFFF),
          primaryColorDark: const Color.fromARGB(255, 97, 100, 105),
          fontFamily: GoogleFonts.heebo().fontFamily,
          useMaterial3: true,
        ),
        routes: [
          VWidget(
            path: '/',
            widget: const PortfolioScaffold(
              page: HomePage(),
              title: 'Home',
            ),
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
            buildTransition: (animation, secondaryAnimation, child) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          VWidget(
            path: '/work',
            widget: const PortfolioScaffold(
              page: Work(),
              title: 'work',
            ),
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
            buildTransition: (animation, secondaryAnimation, child) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          VWidget(
            path: '/about',
            widget: const PortfolioScaffold(
              page: About(),
              title: 'about',
            ),
            transitionDuration: const Duration(
              milliseconds: 500,
            ),
            buildTransition: (animation, secondaryAnimation, child) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        ],
      ),
      ),
    );
  }
}
