import 'package:flutter/material.dart';

class AlertDialogTruco{
  
  static void showCustomDialog(BuildContext? context) {
    showDialog(
      context: context!, 
      barrierDismissible: true,
      builder: (BuildContext context){
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "O VENCEDOR:", 
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
                  Text("1", style: const TextStyle(fontSize: 40)),
                  const SizedBox(width: 10,),
                  const Text("X"),
                  const SizedBox(width: 10,),
                  Text("1", style: const TextStyle(fontSize: 40)),
                ]
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => {},
              child: Text("Quack \u200d🦆", style: TextStyle(color: Colors.yellow[800])),
            ),
            TextButton(
              onPressed: (){}, 
              child: const Text("Reiniciar Jogo", style: TextStyle(color: Colors.blue)),
            ),
          ],
        );
      }
    );
  }
}