// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoTransaction extends StatelessWidget {
  bool isAnime;
  NoTransaction({Key? key, required this.isAnime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 50),
      width: width,
      height: height / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Lottie.network(
            "https://assets7.lottiefiles.com/packages/lf20_ydo1amjm.json",
            animate: isAnime
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "No Transaction Added Yet!",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
