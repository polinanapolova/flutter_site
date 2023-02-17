import 'package:flutter/material.dart';

class Special {
  final String image, title, text;
  final int id;

  Special({
    required this.id,
    required this.image,
    required this.title,
    required this.text,
  });
}

List<Special> specials = [
  Special(
    id: 1,
    title: 'Скидка 20% на кирпичи',
    image: 'assets/images/bf3717aa015166a011218b34cb071924.jpeg',
    text:
        'Только до конца месяца в нашем\nмагазине действует специальная\nакция - скидка до 20% на кирпичи',
  ),
  Special(
    id: 2,
    title: 'Бесплатная доставка',
    image: 'assets/images/5441d9fd9da5835ef628fb4b60f03631.jpg',
    text:
        'Только до конца месяца в нашем\nмагазине действует специальная\nакция – бесплатная доставка',
  ),
  Special(
      id: 3,
      title: 'Скидка 10% на сухие смеси',
      image: 'assets/images/8a9024d5b657b6ff9fb9045f5be362a5.jpg',
      text:
          'Только до конца месяца в нашем\nмагазине действует специальная\nакция – скидка 10% на сухую смесь'),
];
