import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/models/pokedex-model.dart';
import 'package:flutterdex/models/pokemon-model.dart';

class PokemonClient with ChangeNotifier {
  late Dio _client;

  final List<PokemonModel> _pokemonList = [];

  List<PokemonModel>? get value => _pokemonList;

  PokemonClient() {
    _client = Dio(BaseOptions(baseUrl: "https://pokeapi.co/api/v2/"));
  }

  Future<List<PokeDexModel>> _getPokedexList() async {
    var response = await _client.get("pokemon?offset=0&limit=151");
    List<dynamic> results = response.data["results"];

    return results.map((e) => PokeDexModel.getUrl(e)).toList();
  }

  Future<void> getPokemonList() async {
    List<PokeDexModel> pokeDexList = await _getPokedexList();

    for (var pokemon in pokeDexList) {
      var response = await _client.get(pokemon.mainUrl);

      _pokemonList.add(PokemonModel.fromJson(response.data));
    }

    notifyListeners();
  }
}
