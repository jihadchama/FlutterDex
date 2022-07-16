import 'package:flutter/material.dart';

import '../service/pokemon-client.dart';
import '../widgets/pokemon-list-card.dart';

class PokemonListScreen extends StatelessWidget {
  const PokemonListScreen({
    Key? key,
    required PokemonClient client,
  })  : _client = client,
        super(key: key);

  final PokemonClient _client;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _client,
      builder: (_, __) {
        final pokemon = _client.value;
        return ListView(children: [
          Column(
            children: pokemon
                ?.map((pokemon) => PokemonListCard(pokemon: pokemon))
                .toList() as List<Widget>,
          ),
        ]);
      },
    );
  }
}
