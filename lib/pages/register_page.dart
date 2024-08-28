import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_button.dart';
import 'package:fooddelivery/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController ConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size:100,
              color: Theme.of(context).colorScheme.inversePrimary,

            ),
            const SizedBox(height: 25),
            //message app slogan
            Text(
            "Let's create an account for you",
              style: TextStyle(
                fontSize: 16.0,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            //email
            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obsecureText: false,
            ),
            const SizedBox(height: 25),
            //password
            MyTextfield(
              controller: passwordController,
              hintText: 'Password',
              obsecureText: true,
            ),
            const SizedBox(height: 25),
            //Confirm password
            MyTextfield(
              controller: ConfirmPasswordController,
              hintText: 'Confirm password',
              obsecureText: true,
            ),
            const SizedBox(height: 25),
            //signin button
            MyButton(text: 'Sign Up', onTap:(){},),
            const SizedBox(height: 25),

            //already have an account, Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('already have an account',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
