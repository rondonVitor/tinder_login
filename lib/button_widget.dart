import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String icon;
  String label;

  ButtonWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: 18,
              height: 18,
              child: Image.asset(
                'assets/images/' + icon,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}
