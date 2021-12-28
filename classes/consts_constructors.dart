class Location {
  final double lat;
  final double lng;

  //El const hace que los objetos creados con los mismos valores seran almacenados en el mismo lugar en memoria
  //Por lo tanto seran iguales
  const Location(this.lat, this.lng);
}

main() {
  const loc1 = const Location(18.434, 39.5434);
  const loc2 = const Location(18.434, 39.5434);
  const loc3 = const Location(18.434, 39.5435);

  print(loc1 == loc2); //true
  print(loc1 == loc3); //false
}
