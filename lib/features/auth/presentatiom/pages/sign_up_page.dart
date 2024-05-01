import 'package:blogwithbloc/core/theme/app_pallete.dart';
import 'package:blogwithbloc/features/auth/presentatiom/pages/login_page.dart';
import 'package:blogwithbloc/features/auth/presentatiom/widgets/auth_field.dart';
import 'package:blogwithbloc/features/auth/presentatiom/widgets/auth_gradiant_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_service.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // formKey.currentState!.validate();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              AuthField(
                hintText: 'user name',
                controller: usernameController,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthField(
                hintText: 'email',
                controller: emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              AuthField(
                hintText: "password",
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const AuthGradiantButton(buttonText: 'Sign Up',),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  NavigationService.push(context, page: const LoginPage());
                },
                child: RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                      TextSpan(
                        text: "Sign In",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppPallete.gradient2,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
