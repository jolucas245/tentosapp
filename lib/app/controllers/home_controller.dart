import 'package:flutter/material.dart';
import '../src/widgets/alert_dialog_widget.dart';
import '../../app/models/player_model.dart';
import '../models/audio_model.dart';
import '../src/util/snackbar.dart' as util;

class HomeController{

  BuildContext? context;
  Function? refresh;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  Future init(BuildContext context, Function refresh) async {
    this.context = context;
    this.refresh = refresh;
  }

  PlayerModel playerOne = PlayerModel(name: "Nós".toUpperCase(), score: 0, victores: 0);
  PlayerModel playerTwo = PlayerModel(name: "Eles".toUpperCase(), score: 0, victores: 0);

  void increment(PlayerModel player) {
    CustomAudio.click();
    if(player.score < 14){
      player.score++;
    }else{
      player.score++;
      CustomDialog.showCustomDialog(
        context, 
        (){
          resetGame();
          Navigator.of(context!).pop();
        },
        player.name,
        playerOne.score,
        playerTwo.score,
      );
    }
    refresh!();
  }
  
  void decrement(PlayerModel player) {
    if(player.score > 0) {
      CustomAudio.neh();
      player.score -= 1;
    };
    refresh!();
  }

  void resetGame(){
    if(playerOne.score != 0 || playerTwo.score != 0){
      playerOne.score = 0;
      playerTwo.score = 0;
    }else{
      util.Snackbar.showSnackbar(context, "O placar está zerado!");
    }
    refresh!();
  }

}