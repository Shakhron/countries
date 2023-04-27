import 'package:countries/app/domain/app_api.dart';
import 'package:countries/feature/main/domain/entities/country.dart';
import 'package:countries/feature/main/domain/repository/country_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CountryRepository)
class CountryRepositoryImpl implements CountryRepository {
  final AppApi api;
  CountryRepositoryImpl(this.api);

  @override
  Future<List<dynamic>> getAll() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      final response = await api.get('/all');
      // final response = apiresponse;
      List<dynamic> countries =
          (response.data as List).map((e) => Country.fromJson(e)).toList();
      // List countries = apiresponse.map((e) => Country.fromJson(e)).toList();
      return countries;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future searchByName(String query) async {
    try {
      // final response = await api.searchByName(query);
      // print(response.data);
    } catch (_) {
      rethrow;
    }
  }
}

List apiresponse = [
  {
    "name": {
      "common": "Barbados",
      "official": "Barbados",
      "nativeName": {
        "eng": {"official": "Barbados", "common": "Barbados"}
      }
    },
    "tld": [".bb"],
    "cca2": "BB",
    "ccn3": "052",
    "cca3": "BRB",
    "cioc": "BAR",
    "independent": true,
    "status": "officially-assigned",
    "unMember": true,
    "currencies": {
      "BBD": {"name": "Barbadian dollar", "symbol": ""}
    },
    "idd": {
      "root": "+1",
      "suffixes": ["246"]
    },
    "capital": ["Bridgetown"],
    "altSpellings": ["BB"],
    "region": "Americas",
    "subregion": "Caribbean",
    "languages": {"eng": "English"},
    "translations": {
      "ara": {"official": "باربادوس", "common": "باربادوس"},
      "bre": {"official": "Barbados", "common": "Barbados"},
      "ces": {"official": "Barbados", "common": "Barbados"},
      "cym": {"official": "Barbados", "common": "Barbados"},
      "deu": {"official": "Barbados", "common": "Barbados"},
      "est": {"official": "Barbados", "common": "Barbados"},
      "fin": {"official": "Barbados", "common": "Barbados"},
      "fra": {"official": "Barbade", "common": "Barbade"},
      "hrv": {"official": "Barbados", "common": "Barbados"},
      "hun": {"official": "Barbados", "common": "Barbados"},
      "ita": {"official": "Barbados", "common": "Barbados"},
      "jpn": {"official": "バルバドス", "common": "バルバドス"},
      "kor": {"official": "바베이도스", "common": "바베이도스"},
      "nld": {"official": "Barbados", "common": "Barbados"},
      "per": {"official": "باربادوس", "common": "باربادوس"},
      "pol": {"official": "Barbados", "common": "Barbados"},
      "por": {"official": "Barbados", "common": "Barbados"},
      "rus": {"official": "Барбадос", "common": "Барбадос"},
      "slk": {"official": "Barbados", "common": "Barbados"},
      "spa": {"official": "Barbados", "common": "Barbados"},
      "srp": {"official": "Барбадос", "common": "Барбадос"},
      "swe": {"official": "Barbados", "common": "Barbados"},
      "tur": {"official": "Barbados", "common": "Barbados"},
      "urd": {"official": "بارباڈوس", "common": "بارباڈوس"},
      "zho": {"official": "巴巴多斯", "common": "巴巴多斯"}
    },
    "latlng": [13.16666666, -59.53333333],
    "landlocked": false,
    "area": 430.0,
    "demonyms": {
      "eng": {"f": "Barbadian", "m": "Barbadian"},
      "fra": {"f": "Barbadienne", "m": "Barbadien"}
    },
    "flag": "🇧🇧",
    "maps": {
      "googleMaps": "https://goo.gl/maps/2m36v8STvbGAWd9c7",
      "openStreetMaps": "https://www.openstreetmap.org/relation/547511"
    },
    "population": 287371,
    "fifa": "BRB",
    "car": {
      "signs": ["BDS"],
      "side": "left"
    },
    "timezones": ["UTC-04:00"],
    "continents": ["North America"],
    "flags": {
      "png": "https://flagcdn.com/w320/bb.png",
      "svg": "https://flagcdn.com/bb.svg",
      "alt":
          "The flag of Barbados is composed of three equal vertical bands of ultramarine, gold and ultramarine. The head of a black trident is centered in the gold band."
    },
    "coatOfArms": {
      "png": "https://mainfacts.com/media/images/coats_of_arms/bb.png",
      "svg": "https://mainfacts.com/media/images/coats_of_arms/bb.svg"
    },
    "startOfWeek": "monday",
    "capitalInfo": {
      "latlng": [13.1, -59.62]
    },
    "postalCode": {"format": "BB#####", "regex": "^(?:BB)*(\\d{5})"}
  },
  {
    "name": {
      "common": "Réunion",
      "official": "Réunion Island",
      "nativeName": {
        "fra": {"official": "Ile de la Réunion", "common": "La Réunion"}
      }
    },
    "tld": [".re"],
    "cca2": "RE",
    "ccn3": "638",
    "cca3": "REU",
    "independent": false,
    "status": "officially-assigned",
    "unMember": false,
    "currencies": {
      "EUR": {"name": "Euro", "symbol": "€"}
    },
    "idd": {
      "root": "+2",
      "suffixes": ["62"]
    },
    "capital": ["Saint-Denis"],
    "altSpellings": ["RE", "Reunion"],
    "region": "Africa",
    "subregion": "Eastern Africa",
    "languages": {"fra": "French"},
    "translations": {
      "ara": {"official": "جزيرة لا ريونيون", "common": "لا ريونيون"},
      "bre": {"official": "Enez ar Reünion", "common": "Reünion"},
      "ces": {"official": "Réunion", "common": "Réunion"},
      "cym": {"official": "Réunion Island", "common": "Réunion"},
      "deu": {"official": "Réunion", "common": "Réunion"},
      "est": {"official": "Réunioni departemang", "common": "Réunion"},
      "fin": {"official": "Réunion", "common": "Réunion"},
      "fra": {"official": "Ile de la Réunion", "common": "Réunion"},
      "hrv": {"official": "Réunion Island", "common": "Réunion"},
      "hun": {"official": "Réunion", "common": "Réunion"},
      "ita": {"official": "Réunion", "common": "Riunione"},
      "jpn": {"official": "レユニオン島", "common": "レユニオン"},
      "kor": {"official": "레위니옹", "common": "레위니옹"},
      "nld": {"official": "Réunion", "common": "Réunion"},
      "per": {"official": "رئونیون", "common": "رئونیون"},
      "pol": {"official": "Reunion", "common": "Reunion"},
      "por": {"official": "Ilha da Reunião", "common": "Reunião"},
      "rus": {"official": "Реюньон", "common": "Реюньон"},
      "slk": {"official": "Réunionský zámorský departmán", "common": "Réunion"},
      "spa": {"official": "Isla de la Reunión", "common": "Reunión"},
      "srp": {"official": "Реинион", "common": "Реинион"},
      "swe": {"official": "Réunion", "common": "Réunion"},
      "tur": {"official": "Réunion", "common": "Réunion"},
      "urd": {"official": "رے یونیوں جزیرہ", "common": "رے یونیوں"},
      "zho": {"official": "留尼旺岛", "common": "留尼旺岛"}
    },
    "latlng": [-21.15, 55.5],
    "landlocked": false,
    "area": 2511.0,
    "demonyms": {
      "eng": {"f": "Réunionese", "m": "Réunionese"},
      "fra": {"f": "Réunionnaise", "m": "Réunionnais"}
    },
    "flag": "🇷🇪",
    "maps": {
      "googleMaps": "https://goo.gl/maps/wWpBrXsp8UHVbah29",
      "openStreetMaps": "https://www.openstreetmap.org/relation/1785276"
    },
    "population": 840974,
    "car": {
      "signs": ["F"],
      "side": "right"
    },
    "timezones": ["UTC+04:00"],
    "continents": ["Africa"],
    "flags": {
      "png": "https://flagcdn.com/w320/re.png",
      "svg": "https://flagcdn.com/re.svg"
    },
    "coatOfArms": {},
    "startOfWeek": "monday",
    "capitalInfo": {
      "latlng": [-20.88, 55.45]
    },
    "postalCode": {"format": "#####", "regex": "^((97|98)(4|7|8)\\d{2})"},
  },
  {
    "name": {
      "common": "Barbados",
      "official": "Barbados",
      "nativeName": {
        "eng": {"official": "Barbados", "common": "Barbados"}
      }
    },
    "tld": [".bb"],
    "cca2": "BB",
    "ccn3": "052",
    "cca3": "BRB",
    "cioc": "BAR",
    "independent": true,
    "status": "officially-assigned",
    "unMember": true,
    "currencies": {
      "BBD": {"name": "Barbadian dollar", "symbol": ""}
    },
    "idd": {
      "root": "+1",
      "suffixes": ["246"]
    },
    "capital": ["Bridgetown"],
    "altSpellings": ["BB"],
    "region": "Americas",
    "subregion": "Caribbean",
    "languages": {"eng": "English"},
    "translations": {
      "ara": {"official": "باربادوس", "common": "باربادوس"},
      "bre": {"official": "Barbados", "common": "Barbados"},
      "ces": {"official": "Barbados", "common": "Barbados"},
      "cym": {"official": "Barbados", "common": "Barbados"},
      "deu": {"official": "Barbados", "common": "Barbados"},
      "est": {"official": "Barbados", "common": "Barbados"},
      "fin": {"official": "Barbados", "common": "Barbados"},
      "fra": {"official": "Barbade", "common": "Barbade"},
      "hrv": {"official": "Barbados", "common": "Barbados"},
      "hun": {"official": "Barbados", "common": "Barbados"},
      "ita": {"official": "Barbados", "common": "Barbados"},
      "jpn": {"official": "バルバドス", "common": "バルバドス"},
      "kor": {"official": "바베이도스", "common": "바베이도스"},
      "nld": {"official": "Barbados", "common": "Barbados"},
      "per": {"official": "باربادوس", "common": "باربادوس"},
      "pol": {"official": "Barbados", "common": "Barbados"},
      "por": {"official": "Barbados", "common": "Barbados"},
      "rus": {"official": "Барбадос", "common": "Барбадос"},
      "slk": {"official": "Barbados", "common": "Barbados"},
      "spa": {"official": "Barbados", "common": "Barbados"},
      "srp": {"official": "Барбадос", "common": "Барбадос"},
      "swe": {"official": "Barbados", "common": "Barbados"},
      "tur": {"official": "Barbados", "common": "Barbados"},
      "urd": {"official": "بارباڈوس", "common": "بارباڈوس"},
      "zho": {"official": "巴巴多斯", "common": "巴巴多斯"}
    },
    "latlng": [13.16666666, -59.53333333],
    "landlocked": false,
    "area": 430.0,
    "demonyms": {
      "eng": {"f": "Barbadian", "m": "Barbadian"},
      "fra": {"f": "Barbadienne", "m": "Barbadien"}
    },
    "flag": "🇧🇧",
    "maps": {
      "googleMaps": "https://goo.gl/maps/2m36v8STvbGAWd9c7",
      "openStreetMaps": "https://www.openstreetmap.org/relation/547511"
    },
    "population": 287371,
    "fifa": "BRB",
    "car": {
      "signs": ["BDS"],
      "side": "left"
    },
    "timezones": ["UTC-04:00"],
    "continents": ["North America"],
    "flags": {
      "png": "https://flagcdn.com/w320/bb.png",
      "svg": "https://flagcdn.com/bb.svg",
      "alt":
          "The flag of Barbados is composed of three equal vertical bands of ultramarine, gold and ultramarine. The head of a black trident is centered in the gold band."
    },
    "coatOfArms": {
      "png": "https://mainfacts.com/media/images/coats_of_arms/bb.png",
      "svg": "https://mainfacts.com/media/images/coats_of_arms/bb.svg"
    },
    "startOfWeek": "monday",
    "capitalInfo": {
      "latlng": [13.1, -59.62]
    },
    "postalCode": {"format": "BB#####", "regex": "^(?:BB)*(\\d{5})"}
  },
  {
    "name": {
      "common": "Réunion",
      "official": "Réunion Island",
      "nativeName": {
        "fra": {"official": "Ile de la Réunion", "common": "La Réunion"}
      }
    },
    "tld": [".re"],
    "cca2": "RE",
    "ccn3": "638",
    "cca3": "REU",
    "independent": false,
    "status": "officially-assigned",
    "unMember": false,
    "currencies": {
      "EUR": {"name": "Euro", "symbol": "€"}
    },
    "idd": {
      "root": "+2",
      "suffixes": ["62"]
    },
    "capital": ["Saint-Denis"],
    "altSpellings": ["RE", "Reunion"],
    "region": "Africa",
    "subregion": "Eastern Africa",
    "languages": {"fra": "French"},
    "translations": {
      "ara": {"official": "جزيرة لا ريونيون", "common": "لا ريونيون"},
      "bre": {"official": "Enez ar Reünion", "common": "Reünion"},
      "ces": {"official": "Réunion", "common": "Réunion"},
      "cym": {"official": "Réunion Island", "common": "Réunion"},
      "deu": {"official": "Réunion", "common": "Réunion"},
      "est": {"official": "Réunioni departemang", "common": "Réunion"},
      "fin": {"official": "Réunion", "common": "Réunion"},
      "fra": {"official": "Ile de la Réunion", "common": "Réunion"},
      "hrv": {"official": "Réunion Island", "common": "Réunion"},
      "hun": {"official": "Réunion", "common": "Réunion"},
      "ita": {"official": "Réunion", "common": "Riunione"},
      "jpn": {"official": "レユニオン島", "common": "レユニオン"},
      "kor": {"official": "레위니옹", "common": "레위니옹"},
      "nld": {"official": "Réunion", "common": "Réunion"},
      "per": {"official": "رئونیون", "common": "رئونیون"},
      "pol": {"official": "Reunion", "common": "Reunion"},
      "por": {"official": "Ilha da Reunião", "common": "Reunião"},
      "rus": {"official": "Реюньон", "common": "Реюньон"},
      "slk": {"official": "Réunionský zámorský departmán", "common": "Réunion"},
      "spa": {"official": "Isla de la Reunión", "common": "Reunión"},
      "srp": {"official": "Реинион", "common": "Реинион"},
      "swe": {"official": "Réunion", "common": "Réunion"},
      "tur": {"official": "Réunion", "common": "Réunion"},
      "urd": {"official": "رے یونیوں جزیرہ", "common": "رے یونیوں"},
      "zho": {"official": "留尼旺岛", "common": "留尼旺岛"}
    },
    "latlng": [-21.15, 55.5],
    "landlocked": false,
    "area": 2511.0,
    "demonyms": {
      "eng": {"f": "Réunionese", "m": "Réunionese"},
      "fra": {"f": "Réunionnaise", "m": "Réunionnais"}
    },
    "flag": "🇷🇪",
    "maps": {
      "googleMaps": "https://goo.gl/maps/wWpBrXsp8UHVbah29",
      "openStreetMaps": "https://www.openstreetmap.org/relation/1785276"
    },
    "population": 840974,
    "car": {
      "signs": ["F"],
      "side": "right"
    },
    "timezones": ["UTC+04:00"],
    "continents": ["Africa"],
    "flags": {
      "png": "https://flagcdn.com/w320/re.png",
      "svg": "https://flagcdn.com/re.svg"
    },
    "coatOfArms": {},
    "startOfWeek": "monday",
    "capitalInfo": {
      "latlng": [-20.88, 55.45]
    },
    "postalCode": {"format": "#####", "regex": "^((97|98)(4|7|8)\\d{2})"},
  },
];
