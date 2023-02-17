import 'package:flutter/material.dart';

class Reason {
  final String image, title, text;
  final int id;

  Reason({
    required this.id,
    required this.image,
    required this.title,
    required this.text,
  });
}

List<Reason> reasons = [
  Reason(
    id: 1,
    title: 'БЫСТРАЯ ДОСТАВКА',
    image: 'assets/images/delivery_track.jpg',
    text:
        'Наша компания сотрудничает с\nсервисами доставки, поэтому заказы\nприходят к клиентам быстро',
  ),
  Reason(
    id: 2,
    title: 'ДОСТУПНАЯ СТОИМОСТЬ',
    image: 'assets/images/screen_1.jpg',
    text:
        'В нашем магазине любой\nжелающий может купить\nстроительные материалы по самым\nдоступным ценам',
  ),
  Reason(
      id: 3,
      title: 'ОПЫТ РАБОТЫ БОЛЕЕ 10 ЛЕТ',
      image: 'assets/images/screen_2.jpg',
      text:
          'Наша компания занимается\nпродажей и доставкой строительных\nматериалов уже на протяжении\nболее 10 лет'),
];
