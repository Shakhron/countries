class Country {
  Country({
    required this.name,
    required this.officialName,
    required this.independent,
    required this.unMember,
    required this.currenciesName,
    required this.currenciesSymbol,
    required this.capital,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.maps,
    required this.population,
    required this.timezones,
    required this.continents,
    required this.flag,
    required this.coatOfArms,
  });
  late final String name;
  late final String officialName;
  late final bool independent;
  late final bool unMember;
  late final String currenciesName;
  late final String currenciesSymbol;
  late final List<dynamic> capital;
  late final String region;
  late final String subregion;
  late final String languages;
  late final String maps;
  late final int population;
  late final List<dynamic> timezones;
  late final List<dynamic> continents;
  late final String flag;
  late final String coatOfArms;

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name']['common'] ?? 'Undefind';
    officialName = json['name']['official'] ?? 'Undefind';
    independent = json['independent'] ?? false;
    unMember = json['unMember'] ?? false;
    currenciesName = json['currencies'] == null
        ? 'Undefind'
        : (json['currencies'] as Map).values.first['name'];
    currenciesSymbol = json['currencies'] == null
        ? 'Undefind'
        : (json['currencies'] as Map).values.first['symbol'] ?? '#';
    capital = json['capital'] ?? ['Undefind'];
    region = json['region'] ?? 'Undefind';
    subregion = json['subregion'] ?? 'Undefind';
    languages = json['languages'] == null
        ? 'Undefind'
        : (json['languages'] as Map).values.first;
    maps = json['maps']['googleMaps'] ?? 'Undefind';
    population = json['population'] ?? 0;
    timezones = json['timezones'] ?? [];
    continents = json['continents'] ?? [];
    flag = json['flags']['png'] ?? 'Undefind';
    coatOfArms = json['coatOfArms']['png'] ?? 'Undefind';
  }
}
