main() {
  for (int i = 0; i < 10; i++) {
    if (i % 2 != 0)
      continue; //Salta a la siguiente interaccion sin ejecutar el codigo siguiente

    if (i == 6) {
      print('break in $i');
      break; //Finaliza el ciclo
    }

    print(i);
  }
}
