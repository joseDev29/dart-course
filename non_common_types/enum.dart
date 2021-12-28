main() {
  Volume volume = Volume.hight;

  switch (volume) {
    case Volume.low:
      print('Volument bajo');
      break;
    case Volume.medium:
      print('Volument medio');
      break;
    case Volume.hight:
      print('Volument alto');
      break;
  }
}

enum Volume { low, medium, hight }
