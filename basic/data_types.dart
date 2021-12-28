main() {
  int integer = 10;
  double decimal = 10.2;

  // ? identifica que el valor puede ser null
  int? posibleNull;

  String name = 'Tony';
  String? lastname;
  String name2 = 'O\'Connor'; //Se escapa el caracter ' con el \
  String name3 = "O'Connor";
  String multiline = ''' 
    Esto es un string
    multilinea
    de prueba
  ''';
  String Function(String, int) nameLine = (user, age) => '''
    Hello
      $user
    Your age is
      $age years old
  ''';

  String names = '$name $name2';

  var anyType; //se declara como dynamic
  anyType = 23;
  anyType = 'Hello';

  bool isActive = true;
  bool isNotActive = !isActive; //negacion
// si el signo de admiracion se pone despues de la variable
//se le esta comunicando al compilador que ese valor nunca sera nulo

  var anyList = [
    12,
    true,
    'Pepe',
    13.5,
    null
  ]; //El tipo seria List<Object> ya que todo en dart son objetos

  //List<int> deprecatedList = new List(23); //Esta era la forma antigua de declarar listas

  List<String> heroes = ['Batman', 'Wonder Woman', 'Superman'];

  anyList[3] = 'Algo';

  heroes[2] = 'Green Arrow';

  heroes.add('Superman');

  //Sets
  Set<String> villanos = {'Lex', 'Red Skull', 'Doom'};
  villanos.add('Thanos');
  villanos.add('Thanos');
  villanos.add('Thanos'); // Los sets no contienen valoresduplicados

  //Convertir una List en un Set para eliminar los valores duplicados
  heroes.toSet();
  heroes.toList();

  //Maps
  Map<String, dynamic> eren = {
    'name': 'Eren',
    'lastname': 'Jeager',
    'titan': 'Attack',
    'level': 23
  };

  Map<int, String> positions = {0: 'Pos 0', 1: 'Pos 1', 2: 'Pos 2'};

  eren['name'];
  positions[2];

  Map<String, dynamic> mikasa = new Map();

  mikasa.addAll({'name': 'Mikasa', 'level': 34});

  //Si se buscan posiciones no existentes se obtendra un null
}
