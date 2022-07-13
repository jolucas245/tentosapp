import 'package:flutter/material.dart';

class Snackbar{
  static void showSnackbar(BuildContext? context, String? text){
    if (context == null) return;

    FocusScope.of(context).requestFocus(FocusNode());
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        behavior: SnackBarBehavior.floating,
        content: Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14
          ),
        ),
        backgroundColor: Colors.grey[800],
        duration: const Duration(seconds: 4)
      )
    );
  }
}