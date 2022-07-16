import 'package:flutter/material.dart';
import 'package:flutterdex/utils/string-extension.dart';

import '../resources/colors/type-color.dart';

class PokemonType extends StatelessWidget {
  const PokemonType({
    Key? key,
    required this.type,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: setTypeColor(type),
      borderRadius: BorderRadius.circular(3),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 3,
        ),
        decoration: BoxDecoration(
          color: setTypeColor(type),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(children: [
          Text(
            type.capitalize(),
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 3.0,
                    offset: Offset(1, 2),
                    color: Colors.grey,
                  )
                ]),
          ),
        ]),
      ),
    );
  }
}
