import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {

    //get screen ppi
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final widthButton = (screenWidth - 32 - 9) / 2;

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          Container(
            height: screenHeight - 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/start_background.jpg',
                  ),
                fit: BoxFit.cover,
              ),
            ),
            child:
              Image.asset('assets/images/logo.png'),
          ),
          Row(
            children: [
              Container(
                width: widthButton,
                height: 52,
                margin: const EdgeInsets.only(top: 20, left: 16, right: 9),
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  child: Text(
                    'LOG IN',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              //const SizedBox(width: 9),
              Container(
                width: widthButton,
                height: 52,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 2),
                    color: Colors.black,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
                  child: Text(
                    'REGISTER',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
