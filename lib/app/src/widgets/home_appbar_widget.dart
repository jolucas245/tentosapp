import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  
  final VoidCallback? callback; 
  const HomeAppBarWidget({ Key? key, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      centerTitle: true,
      elevation: 0,
      title: Text(
        "Tentos Truco", 
        style: TextStyle(
          color: Colors.grey[800], 
          fontWeight: FontWeight.w600
        )
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Transform.rotate(
            angle: 5.2,
            child: IconButton(
              icon: Icon(Icons.replay, color: Colors.grey[800], size: 32,),
              onPressed: callback,
            )
          ),
        )
      ],
    );
  }
}