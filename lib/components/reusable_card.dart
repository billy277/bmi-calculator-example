import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bckgColor;
  final Widget cardChild;
  final Function selected;

  ReusableCard({@required this.bckgColor, this.cardChild, this.selected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selected,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bckgColor,
        ),
        child: cardChild,
      ),
    );
  }
}
