import 'package:flutter/material.dart';
import 'package:food_ordering/components/my_button.dart';
import 'package:food_ordering/components/my_textfield.dart';
import 'package:food_ordering/services/auth_service.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login
  void login() async {
    // get instance of auth  service
    final _authService = AuthService();

    // try sign in
    try {
      await _authService.signWithEmailPassword(
          emailController.text, passwordController.text);
    }
    // display any error
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

// forget password

  void forgotPw() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("User tapped forgot password."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          // Icon(
          //   Icons.food_bank,
          //   size: 102,
          //   color: Colors.black,
          // ),
          Lottie.network(
              "https://lottie.host/63e58c06-b2d8-4390-8c70-99264b5348bc/fWMYZX69Sf.json"),
          const SizedBox(height: 25),

          // message, App slogan
          Text(
            "Finish Hunger",
            style: TextStyle(
              fontSize: 30,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 25),

          // email Textfield
          MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false),
          const SizedBox(height: 25),

          //password textfield
          MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),
          const SizedBox(height: 25),

          // sign in button
          MyButton(onTap: login, text: "Sign In"),

          const SizedBox(height: 25),

          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register Now",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
