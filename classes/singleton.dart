import 'service.dart';

main() {
  final spotifyService = new Service();
  spotifyService.url = 'https://spotify.com';

  final spotifyService2 = new Service();
  spotifyService2.url = 'https://spotify.com/v2';

  //Son iguales, ambos apuntan exactamente al mismo lugar en memoria
  print(spotifyService == spotifyService2); //true

  //El valor de url para ambas sera el ultimo ingresado
  print(spotifyService.url);
  print(spotifyService2.url);
}
