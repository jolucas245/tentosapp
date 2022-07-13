import 'package:flutter/material.dart';
import '../../models/audio_model.dart';

class CustomDialog{
  
  static void showCustomDialog(BuildContext? context, VoidCallback callback, String winner, int scoreOne, int scoreTwo) {
    showDialog(
      context: context!, 
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "O VENCEDOR: $winner", 
                textAlign: TextAlign.center, 
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              const Divider(),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$scoreOne", style: const TextStyle(fontSize: 40)),
                  const SizedBox(width: 10,),
                  const Text("X"),
                  const SizedBox(width: 10,),
                  Text("$scoreTwo", style: const TextStyle(fontSize: 40)),
                ]
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => CustomAudio.quack(),
              child: Text("Quack \u200d🦆", style: TextStyle(color: Colors.yellow[800])),
            ),
            TextButton(
              onPressed: callback, 
              child: const Text("Reiniciar Jogo", style: TextStyle(color: Colors.blue)),
            ),
          ],
        );
      }
    );
  }

}