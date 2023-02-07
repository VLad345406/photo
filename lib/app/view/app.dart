// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:photo/l10n/l10n.dart';
import 'package:photo/screens/login.dart';
import 'package:photo/screens/main_screens/home_screen.dart';
import 'package:photo/screens/main_screens/message_screen.dart';
import 'package:photo/screens/main_screens/profile_screen.dart';
import 'package:photo/screens/main_screens/search_screen.dart';
import 'package:photo/screens/registration.dart';
import 'package:photo/screens/registration_nick.dart';
import 'package:photo/screens/start_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),

      initialRoute: getInitialRoute(),
      routes: {
        '/': (context) => const StartScreen(),
        '/login': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/registration_nick': (context) => const RegistrationNickScreen(),
        '/home': (context) => const HomeScreen(),
        '/search' : (context) => const SearchScreen(),
        '/add' : (context) => const HomeScreen(),
        '/message' : (context) => const MessageScreen(),
        '/profile' : (context) => const ProfileScreen(),
      },

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

String getInitialRoute(){
  if (true)
    return '/home';
  else
    return '/home';
}