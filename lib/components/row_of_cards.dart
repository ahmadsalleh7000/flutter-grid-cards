import 'package:flutter/material.dart';
import 'package:grid_table/components/card.dart';

class RowOfCards extends StatelessWidget {
  final double halfScreenHeight;
  final String image1;
  final String image2;
  final String text1;
  final String text2;
  final int flex;
  final double bottom;
  final double top;
  final double left;
  final double right;
  final Color color1;
  final Color color2;

  const RowOfCards({super.key, required this.halfScreenHeight, required this.image1, required this.image2, required this.text1, required this.text2, required this.flex, required this.bottom, required this.top, required this.left, required this.right, required this.color1 , required this.color2});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  ImageCard(
                    halfScreenHeight : halfScreenHeight, 
                    flex             : flex, 
                    bottom           : bottom, 
                    top              : top, 
                    left             : left, 
                    right            : right, 
                    color            : color1, 
                    image            : image1, 
                    text             : text1),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(
                          bottom: bottom, top: top, left: 0.0, right: 0.0),
                      child: Container(
                        height: halfScreenHeight,
                      ),
                    ),
                  ),
                  ImageCard(
                    halfScreenHeight : halfScreenHeight, 
                    flex             : flex, 
                    bottom           : bottom, 
                    top              : top, 
                    left             : right, 
                    right            : left, 
                    color            : color2, 
                    image            : image2, 
                    text             : text2),
                ],
              );
  }
}