import 'package:flutter/material.dart';

Color setCardColor(String? type) {
  if (type == null) return const Color(0xffdbd9d9);

  type = type.toLowerCase();

  switch (type) {
    case 'fire':
      return const Color(0xfffa9950);
    case 'grass':
      return const Color(0xff91eb5b);
    case 'water':
      return const Color(0xFF69b9e3);
    case 'rock':
      return const Color(0xffedd040);
    case 'bug':
      return const Color(0xffbed41c);
    case 'normal':
      return const Color(0xffC6C6A7);
    case 'poison':
      return const Color(0xffd651d4);
    case 'electric':
      return const Color(0xffF7D02C);
    case 'ground':
      return const Color(0xfff5d37d);
    case 'ice':
      return const Color(0xff79dbdb);
    case 'dark':
      return const Color(0xffa37e65);
    case 'fairy':
      return const Color(0xfffaa7d0);
    case 'psychic':
      return const Color(0xffff80a6);
    case 'fighting':
      return const Color(0xffe8413a);
    case 'ghost':
      return const Color(0xff9063c9);
    case 'flying':
      return const Color(0xffbda8f7);
    case 'dragon':
      return const Color(0xff9065f7);
    case 'steel':
      return const Color(0xffa0a0de);
    default:
      return const Color(0xffdbd9d9);
  }
}
