import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/home_screen.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            const Spacer(),
            Text(
              'Welcome to our community',
              style: GoogleFonts.ubuntu(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              '\nTo get started, please provide your information\n to create an account.',
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: nameController,
              hintText: "Enter your Name",
              obscureText: false,
              labelText: "Name",
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: emailController,
              hintText: "Enter your Email",
              obscureText: false,
              labelText: "Email",
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: passwordController,
              hintText: "Enter your Password",
              obscureText: true,
              labelText: "Password",
            ),
            const SizedBox(height: 20),
            MyTextField(
              controller: confirmController,
              hintText: "Confirm your password",
              obscureText: true,
              labelText: "Confirm Password",
            ),
            const SizedBox(height: 30),
            MyButton(
              onTap: () {},
              hinText: 'Sign up',
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have and account?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Log in',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 0, 174, 255),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
