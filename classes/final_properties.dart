class Square {
  //Las propiedades no podran ser modificadas
  final int side;
  final int area;

  Square({required this.side}) : this.area = side * side;
  // Square(int side)
  //     : this.side = side,
  //       this.area = side * side;
}

main() {
  final square = new Square(side: 10);

  print(square.area);
}
