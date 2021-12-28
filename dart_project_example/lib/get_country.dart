import 'package:http/http.dart' as http;
import 'package:project_1/classes/country.dart';

void getCountry() {
  final Uri apiURL = Uri.parse('https://restcountries.com/v2/alpha/col');

  http.get(apiURL).then((response) {
    final Country country = countryFromJson(response.body);

    print('Country: ${country.name}');
    print('Population: ${country.population}');
    print('Borders: ${country.borders.toString()}');
    print('Languaje: ${country.languages.first}');
    print('Latitude: ${country.latlng[0]}');
    print('Length: ${country.latlng[1]}');
    print('Currency: ${country.currencies.toString()}');
    print('Flag: ${country.flag}');
  });
}
