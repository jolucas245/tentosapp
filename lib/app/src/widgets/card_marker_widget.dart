import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardMarkerWidget extends StatefulWidget {

  final Icon iconTop;
  final Icon iconBottom;
  int counter;

  CardMarkerWidget({ 
    Key? key, 
    required this.iconTop, 
    required this.iconBottom, 
    required this.counter
  }) : super(key: key);

  @override
  State<CardMarkerWidget> createState() => _CardMarkerWidgetState();
}

class _CardMarkerWidgetState extends State<CardMarkerWidget> {

  @override
  Widget build(BuildContext context) {

    final double widthScreen = MediaQuery.of(context).size.width;
    final double heightScreen = MediaQuery.of(context).size.height;

    return SizedBox(
      width: widthScreen * 0.45,
      height: heightScreen * 0.35,
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _suitsTopIcon(widget.iconTop),
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey
                )
              ),
              child: Center(
                child: Text(
                  widget.counter.toString(), 
                  style: const TextStyle(
                    fontSize: 45, 
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            _suitsBottomIcon(widget.iconBottom)
          ],
        ),
      )
    );
  }

  Expanded _suitsTopIcon(Icon icon){
    return Expanded(
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: icon,
        ),
      ),
    );
  }
  
  Expanded _suitsBottomIcon(Icon icon){
    return Expanded(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: RotatedBox(
            quarterTurns: 2,
            child: icon
          ),
        ),
      ),
    );
  }
}