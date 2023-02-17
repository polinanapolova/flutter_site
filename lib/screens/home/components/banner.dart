import 'package:flutter/material.dart';

import '../../../constants.dart';

class BunnerSection extends StatelessWidget {
  const BunnerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 595,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/c596ae9fa09ddb0c4b94f7c9fdffc2de.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.darken),
        ),
      ),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: kMAxWidth),
            child: Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 190,
                ),
                Row(
                  children: [
                    Text('МАГАЗИН СТРОИТЕЛЬНЫХ\nМАТЕРИАЛОВ С\nДОСТАВКОЙ',
                        style: TextStyle(
                          fontFamily: 'RussoOne',
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        softWrap: true),
                  ],
                ),
                SizedBox(
                  height: kPadding,
                ),
                Row(
                  children: [
                    Text(
                        'Добро пожаловать на наш сайт. Мы занимаемся продажей и\nдоставкой строительных материалов уже на протяжении 10 лет. ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                        softWrap: true),
                  ],
                ),
                SizedBox(
                  height: kPadding,
                ),
                MaterialButton(
                  minWidth: 350,
                  height: 50,
                  color: Color.fromARGB(255, 237, 122, 0),
                  onPressed: () {},
                  child: Text(
                    'Перейти в каталог',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
