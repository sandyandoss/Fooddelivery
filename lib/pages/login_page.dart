import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_button.dart';
import 'package:fooddelivery/components/my_textfield.dart';
import 'package:fooddelivery/pages/home_page.dart';


class LoginPage extends StatefulWidget {
final void Function()? onTap;
   const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage(),
    ),
    );
  }


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
               'Food Delivery App',
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
            //signin button
            MyButton(text: 'Sign In',
              onTap: login
              ),
            const SizedBox(height: 25),

            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register now',
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
