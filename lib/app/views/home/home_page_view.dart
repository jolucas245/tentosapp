import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nice_buttons/nice_buttons.dart';
import '../../src/widgets/alert_dialog_truco_widget.dart';
import '../../src/widgets/card_marker_widget.dart';
import '../../controllers/home_controller.dart';
import '../../src/icons/suits_cards_icons.dart';
import '../../src/widgets/home_appbar_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({ Key? key }) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  HomeController controller = HomeController();
  
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      controller.init(context, refresh);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.key,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 56),
        child: HomeAppBarWidget(
          callback: () => controller.resetGame(),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  controller.playerOne.name,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  overflow: TextOverflow.fade,
                ),
                Text(
                  controller.playerTwo.name,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800]
                        ),
                        onPressed: () => controller.increment(controller.playerOne), 
                        child: const Text("+1", style: TextStyle(color: Colors.white))
                      ),
                      CardMarkerWidget(
                        iconTop: const Icon(SuitsCards.spades),
                        iconBottom: const Icon(SuitsCards.clovers),
                        counter: controller.playerOne.score
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red
                        ),
                        onPressed: () => controller.decrement(controller.playerOne), 
                        child: const Text("-1", style: TextStyle(color: Colors.white))
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800]
                        ),
                        onPressed: () => controller.increment(controller.playerTwo), 
                        child: const Text("+1", style: TextStyle(color: Colors.white))
                      ),
                      CardMarkerWidget(
                        iconTop: const Icon(SuitsCards.hearts, color: Colors.red),
                        iconBottom: const Icon(SuitsCards.diamonds, color: Colors.red),
                        counter: controller.playerTwo.score
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: () => controller.decrement(controller.playerTwo), 
                        child: const Text("-1", style: TextStyle(color: Colors.white))
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              // NiceButtons(
              //   onTap: (finish) => AlertDialogTruco.showCustomDialog(context), 
              //   gradientOrientation: GradientOrientation.Horizontal,
              //   stretch: false,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: const [
              //       Icon(SuitsCards.diamonds, color: Colors.red),
              //       Text(
              //         "TRUCO", 
              //         style: TextStyle(
              //           color: Colors.white, 
              //           fontSize: 25, 
              //           fontWeight: FontWeight.bold
              //         )
              //       ),
              //       Icon(SuitsCards.clovers)
              //     ],
              //   ),
              // )
            ],
          ),
        ],
      )
    );
  }

  void refresh(){
    setState(() {});
  }
}