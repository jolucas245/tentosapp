import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPageView extends StatefulWidget {
  const SplashPageView({ Key? key }) : super(key: key);

  @override
  State<SplashPageView> createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((_) => Navigator.of(context).pushReplacementNamed("/home"));
  }

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.of(context).size.height;
    final double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      height: heightScreen,
      width: widthScreen,
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _lottieAnimation(heightScreen * 0.5, widthScreen * 0.5),
          _bottomText() 
        ],
      ),
    );
  }

  Expanded _lottieAnimation<Widget>(double height, double width){
    return Expanded(
      child: Center(
        child: Lottie.asset(
          "assets/lotties/splash_animation.json", 
          height: height,
          width: width
        )
      ),
    );
  }

  Align _bottomText<Widget>(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text("Desenvolvido por João Ávila", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14, color: Colors.grey[800], decoration: TextDecoration.none)),
    );
  }

}