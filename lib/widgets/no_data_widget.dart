import 'package:flutter/material.dart';

class CustomNoDataWidget extends StatelessWidget {
  CustomNoDataWidget({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(82, 218, 218, 218)),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/noDataWidget1.gif",scale: 2, filterQuality: FilterQuality.high,)),
        ],
      ),
    );
  }
}
