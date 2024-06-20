import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final double halfScreenHeight;
  final int flex;
  final double left;
  final double right;
  final Color color;
  final String text;
  const CategoryTitle({super.key, required this.halfScreenHeight, required this.flex, required this.left, required this.color, required this.text, required this.right});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                  flex: flex, 
                  child: SizedBox(
                      height: halfScreenHeight*0.4,
                      child: Padding(
                        padding:  EdgeInsets.only(left: left, right: right),
                        child: Container(
                          color: color,
                          child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  text,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              )),
                        ),
                      ),
                    );
  }
}