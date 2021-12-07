import 'dart:math';

class CountriesMusixmatch {
  final String countryCode;
  final String countryName;

  CountriesMusixmatch({
    required this.countryCode,
    required this.countryName,
  });
}

class RandomCountry {
  final code = <CountriesMusixmatch>[
    CountriesMusixmatch(countryCode: 'us', countryName: 'USA'),
    CountriesMusixmatch(countryCode: 'it', countryName: 'Italy'),
    CountriesMusixmatch(countryCode: 'de', countryName: 'Germany'),
    CountriesMusixmatch(countryCode: 'es', countryName: 'Spain'),
    CountriesMusixmatch(countryCode: 'pt', countryName: 'Portugal'),
    CountriesMusixmatch(countryCode: 'gb', countryName: 'United Kingdom'),
    CountriesMusixmatch(countryCode: 'cz', countryName: 'Czech Republic'),
    CountriesMusixmatch(countryCode: 'br', countryName: 'Brazil'),
  ];

  CountriesMusixmatch randomCountry() {
    final _random = Random();
    return code[_random.nextInt(code.length)];
  }
}
