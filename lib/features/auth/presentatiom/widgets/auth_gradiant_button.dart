import 'package:blogwithbloc/core/theme/app_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthGradiantButton extends StatelessWidget {
  const AuthGradiantButton({super.key, required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight
        ),borderRadius: BorderRadius.circular(8)
      ),
      child: ElevatedButton(onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
          fixedSize: const Size(395, 55),
        ), child:  Text(buttonText,style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),) ),
    );
  }
}
