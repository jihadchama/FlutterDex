class PokeDexModel {
  String mainUrl;

  PokeDexModel({required this.mainUrl});

  factory PokeDexModel.getUrl(dynamic json) {
    return PokeDexModel(
      mainUrl: json['url'],
    );
  }
}
