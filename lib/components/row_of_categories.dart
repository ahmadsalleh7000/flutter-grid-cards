import 'package:flutter/material.dart';
import 'package:grid_table/components/category.dart';

class RowOfCategories extends StatelessWidget {

  final double halfScreenHeight;
  final int flex;
  final double left;
  final double right;
  final Color color1;
  final String text1;
  final Color color2;
  final String text2;
  const RowOfCategories({super.key, required this.halfScreenHeight, required this.flex, required this.left, required this.right, required this.color1, required this.text1, required this.color2, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                CategoryTitle(
                  halfScreenHeight: halfScreenHeight, 
                  flex: flex, 
                  left: left, 
                  right: right, 
                  color: color1,
                   text: text1),
               
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 0.0, top: 0, left: 0.0, right: 0.0),
                    child: Container(
                      height: halfScreenHeight*0.4,
                    ),
                  ),
                ),
                CategoryTitle(
                  halfScreenHeight: halfScreenHeight, 
                  flex: flex, 
                  left: right, 
                  right: left, 
                  color: color2,
                   text: text2),
              ],
            );
  }
}