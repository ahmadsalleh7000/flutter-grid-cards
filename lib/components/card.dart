import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final double halfScreenHeight;
  final int flex;
  final double bottom;
  final double top;
  final double left;
  final double right;
  final Color color;
  final String image;
  final String text;
  const ImageCard({super.key, required this.halfScreenHeight, required this.flex, required this.bottom, required this.top, required this.left, required this.right, required this.color, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
              flex: flex,
              child: Padding(
                padding:  EdgeInsets.only(
                    bottom: bottom, top: top, left: left, right: right),
                child: SizedBox(
                  height: halfScreenHeight,
                  child: Stack(
                    children: [
                      Image.asset(image, fit: BoxFit.fill, width: double.infinity, height: halfScreenHeight,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FittedBox(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: color,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:  Text(text, style: const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w700),)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
  }
}