import 'package:flutter/material.dart';

class Product {
  final String image, title, price;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'ГЛИНА',
    image: 'assets/images/40fdd5984a389b5deda13fa4639e6121.png',
    price: '490 руб.',
  ),
  Product(
    id: 2,
    title: 'ПЕСОК',
    image: 'assets/images/d3813d1b1e8ed121ca78ec69eeb00325.jpg',
    price:  '540 руб.',
  ),
  Product(
    id: 3,
    title: 'ГРАВИЙ',
    image: 'assets/images/744cef4e91aa3b094d5e2521cc907af3.jpg',
    price: '590 руб.',
  ),
];
