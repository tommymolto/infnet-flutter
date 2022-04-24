class WorldPopulation {
  int rank;
  String country;
  String population;
  String flag;
  
  // json -> object
  WorldPopulation.fromJson(Map<String, dynamic> json)
      : rank = json['rank'],
        country = json['country'],
        population = json['population'],
        flag = json['flag'];
 
  // object -> json
  Map<String, dynamic> toJson() =>
      {'rank': rank, 'country': country, 'population':population, 'flag': flag};

  @override
  String toString() {
    return 'WorldPopulation{rank: $rank, country: $country, population: $population}';
  }
  
}
