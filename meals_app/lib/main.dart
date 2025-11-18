import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/views/categories_view.dart';
import 'package:meals_app/views/landing_view.dart';

// final theme = ThemeData(
//   // useMaterial3: true,
//   colorScheme: ColorScheme.fromSeed(
//     seedColor: const Color.fromARGB(255, 131, 57, 0),
//   ),
//   textTheme: GoogleFonts.latoTextTheme(),
// );

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 184, 93, 24),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 250, 194, 110),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const LandingScreen(),
    );
  }
}
