import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo/screens/wait_accept_email_page.dart';
import '../../screens/start_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      home: Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator(),);
            }
            else if (snapshot.hasData) {
              return const WaitAcceptEmailPage();
            }
            else {
              return const StartScreen();
            }
          },
        ),
      ),
      /*//home: MainScreen(),
      initialRoute: getInitialRoute(),
      routes: {
        '/': (context) => const StartScreen(),
        '/login': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/wait_accept_email': (context) => const WaitAcceptEmailPage(),
        '/registration_user_data': (context) => const RegistrationUserDataScreen(),
        '/home': (context) => const MainScreen(),
        '/search' : (context) => const SearchScreen(),
        '/message' : (context) => const MessageScreen(),
        '/individual_profile' : (context) => const ProfileScreen( mode: 'individual',),
        '/edit_profile' : (context) => const EditScreen(),
      },

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,*/
    );
  }
}

/*
String getInitialRoute(){
  if (true)
    return '/';
  // else
  //   return '/home';
}*/
