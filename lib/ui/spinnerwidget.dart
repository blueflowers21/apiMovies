import 'package:flutter/material.dart';
 class SpinnerWidget extends StatelessWidget{
  const SpinnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Container(
        alignment: AlignmentDirectional.bottomCenter,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            CircularProgressIndicator()

        ],),
      ));
 }
}