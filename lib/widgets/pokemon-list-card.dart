import 'package:flutter/material.dart';
import 'package:flutterdex/resources/colors/card-color.dart';
import 'package:flutterdex/utils/string-extension.dart';

import '../models/pokemon-model.dart';
import 'pokemon-type.dart';

class PokemonListCard extends StatelessWidget {
  const PokemonListCard({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonModel? pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 20,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
        top: 5,
        left: 5,
        right: 5,
      ),
      decoration: BoxDecoration(
          color: setCardColor(pokemon?.type1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: setCardColor(pokemon?.type1).withOpacity(0.9),
              blurRadius: 5,
              offset: const Offset(2, 3),
            )
          ]),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "#${pokemon?.id}",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                "${pokemon?.name}".capitalize(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black38,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  if (pokemon?.type1 != null) PokemonType(type: pokemon!.type1),
                  const SizedBox(width: 5),
                  if (pokemon?.type2 != null) PokemonType(type: pokemon!.type2)
                ],
              )
            ],
          ),
          Positioned(
            right: -35,
            bottom: -50,
            child: FadeInImage.assetNetwork(
              image: pokemon?.sprite,
              imageScale: 0.5,
              placeholder: "images/loading.gif",
            ),
          )
        ],
      ),
    );
  }
}
