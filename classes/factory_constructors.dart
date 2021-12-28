class Rectangle {
  int base;
  int height;
  int area;
  String type;

  //El factory siempre debe regresar ya sea una instancia ya creada de su clase
  //o una nueva instancia de la misma
  factory Rectangle(int base, int height) {
    if (base == height) return Rectangle.Square(base: base);

    return Rectangle.Rectangle(base: base, height: height);
  }

  //Los : permiten ejecutar el codigo siguiente antes de generar la instancia de la clase
  Rectangle.Square({required int base})
      : this.base = base,
        this.area = base * base,
        this.height = base,
        this.type = 'square';

  Rectangle.Rectangle({required int base, required int height})
      : this.base = base,
        this.height = height,
        this.area = base * height,
        this.type = 'rectangle';

  @override
  String toString() {
    return {'base': base, 'height': height, 'area': area, 'type': type}
        .toString();
  }
}

main() {
  final square = new Rectangle(23, 23);

  final reactangle = new Rectangle(42, 38);

  print(square);
  print(reactangle);
}
