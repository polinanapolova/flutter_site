import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model.dart/special_model.dart';

class Specials extends StatelessWidget {
  const Specials({
    super.key,
    required this.special,
    required this.press,
  });
  final Special special;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: InkWell(
        onTap: press,
        child: Container(
          color: kPrimaryColor,
          // width: 364,
          // height: 522,
          // height: 780,
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              // spacing: 32,
              // runSpacing: 16,
              // child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  // borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    special.image,
                    // height: 261,
                    // width: 366,
                    // fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  special.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),

                SizedBox(
                  height: 20,
                ),
                Text(
                  special.text,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  height: 40,
                  minWidth: 293,
                  color: Color.fromARGB(255, 237, 122, 0),
                  onPressed: () {},
                  child: Text(
                    'Узнать подробнее',
                    style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),
                  ),
                ),
                // SizedBox(
                //   height: 30,
                // )
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
