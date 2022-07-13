import 'package:audioplayers/audioplayers.dart';

class CustomAudio{

  static quack() {
    AudioCache player = AudioCache(prefix: "assets/sound/");
    player.play("quack.mp3");
  }
  
  static click() {
    AudioCache player = AudioCache(prefix: "assets/sound/");
    player.play("mouse_click.mp3");
  }

  static neh(){
    AudioCache player = AudioCache(prefix: "assets/sound/");
    player.play("neh.mp3");
  }

}