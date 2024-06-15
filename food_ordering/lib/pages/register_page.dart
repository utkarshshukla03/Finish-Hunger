import 'package:flutter/material.dart';
import 'package:food_ordering/services/auth_service.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  // register method

  void register() async {
    // get auth service
    final _authService = AuthService();

    // check if passwords match -> create user
    if (passwordController.text == confirmpasswordController.text) {
      // try creating user
      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      }
      // display any errors
      catch (e) {
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    // if passwords don't match show error
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Password Doesn't Match"),
        ),
      );
    }
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
          Icon(
            Icons.lock_open_rounded,
            size: 102,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),

          // message, App slogan
          Text(
            "Let's Create An Account",
            style: TextStyle(
              fontSize: 16,
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

          // confirm password textfield
          MyTextField(
              controller: confirmpasswordController,
              hintText: "Confirm",
              obscureText: true),

          const SizedBox(height: 10),

          // sign up button
          MyButton(onTap: register, text: "Sign Up"),

          const SizedBox(height: 10),

          // already have an account? Login Here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login Now",
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
