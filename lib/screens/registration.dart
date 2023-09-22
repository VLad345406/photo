import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future registration() async {
    if (emailController.text == '' ||
        passwordController.text == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please, input data!'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
    else {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        /*try {
          final user = FirebaseAuth.instance.currentUser!;
          await user.sendEmailVerification();
        }
        catch (e) {
          snackBar(e.toString());
        }*/
        Navigator.pushNamed(
            context, '/wait_accept_email');
      }
      catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  bool _isObscure = true;

  void showPassword() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/icons/back_arrow.svg',
            width: 12.21,
            height: 11.35,
          ),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header text
          Container(
            margin: const EdgeInsets.only(left: 16, top: 32.65, bottom: 32),
            child: Text(
              'Register',
              style: GoogleFonts.comfortaa(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          //email text-field
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: TextFormField(
              controller: emailController,
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.none,
              ),
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.zero),
                  borderSide: BorderSide(
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.zero),
                  borderSide: BorderSide(
                    width: 2,
                  ),
                ),
              ),
              textInputAction: TextInputAction.next,
            ),
          ),
          //password text-field
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: TextFormField(
              controller: passwordController,
              obscureText: _isObscure,
              enableSuggestions: false,
              autocorrect: false,
              style: GoogleFonts.roboto(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: showPassword,
                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.zero),
                  borderSide: BorderSide(
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.zero),
                  borderSide: BorderSide(
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          //registration button
          Container(
            width: screenWidth - 32,
            height: 52,
            margin: const EdgeInsets.only(left: 16,top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 2),
              color: Colors.black,
            ),
            child: TextButton(
              onPressed: registration,
              /*onPressed: () {
                Navigator.pushNamed(context, '/registration_nick');
              },*/
              //onPressed: registration,
              child: Text(
                'NEXT',
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
    );
  }
}
