import 'package:flutter/material.dart';

class Catalog {
  final String image, title, price, text;
  final int id;

  Catalog({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.text,
  });
}

List<Catalog> catalogs = [
  Catalog(
    id: 1,
    title: 'ЧЕРЕПИЦА',
    image: 'assets/images/28c284665d999a7acf33418b300169ef.png',
    price: '490 руб.',
    text:
        'Материалы, применяемые в\nстроительстве для постройки,\nремонта и реконструкций\nсооружений',
  ),
  Catalog(
    id: 2,
    title: 'ГРАНИТ',
    image: 'assets/images/0b470dd135ac6e626cb37ead7836505f.jpg',
    price: '540 руб.',
    text:
        'Материалы, применяемые в\nстроительстве для постройки,\nремонта и реконструкций\nсооружений',
  ),
  Catalog(
    id: 3,
    title: 'ЦЕМЕНТ',
    image: 'assets/images/4dbf6b59062de932325e7ca63f47171a.png',
    price: '590 руб.',
    text:
        'Материалы, применяемые в\nстроительстве для постройки,\nремонта и реконструкций\nсооружений',
  ),
  Catalog(
    id: 4,
    title: 'ИЗВЕСТЬ',
    image: 'assets/images/304bed47bdd46d1b477e714bbbd07557.jpg',
    price: '640 руб.',
    text:
        'Материалы, применяемые в\nстроительстве для постройки,\nремонта и реконструкций\nсооружений',
  ),
  Catalog(
    id: 5,
    title: 'БЕТОН',
    image: 'assets/images/d26cb2a78f76eb30e8372bc798c21163.jpeg',
    price: '690 руб.',
    text:
        'Материалы, применяемые в\nстроительстве для постройки,\nремонта и реконструкций\nсооружений',
  ),
  Catalog(
    id: 6,
    title: 'КИРПИЧ',
    image: 'assets/images/15df28db53e2cf7fe97e5051179f3f11.jpg',
    price: '740 руб.',
    text:
        'Материалы, применяемые в\nстроительстве для постройки,\nремонта и реконструкций\nсооружений',
  ),
];
