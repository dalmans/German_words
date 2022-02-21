class Data {
  static List<String> menGender = ['der', 'den', 'dem', 'des'];

  // static List<String> menGender = ['gegenüber', 'gegenüber', 'gegenüber', 'gegenüber'];
  static List<String> womenGender = ['die', 'die', 'der', 'der'];
  static List<String> neuterGender = ['das', 'das', 'dem', 'des'];
  static List<String> pluralNumber = ['die', 'die', 'den', 'der'];
  static List<List> genders = [
    menGender,
    womenGender,
    neuterGender,
    pluralNumber
  ];

  // static List <String> articles = menGender+ womenGender+neuterGender+pluralNumber;
  static List<String> articles = ['der', 'den', 'dem', 'des', 'die', 'das'];

  static List<String> preposition = [
    '',
    'durch, für, ohne, gegen, wieder, entlang',
    'mit, nach, aus, zu, von, bei, seit, außer, gegenüber',
    'während, wegen, jenseits, diesseits, ungeachtet, außerhalb, infolge, (an)statt '
  ];
  static List<String> prepositprepositionsOfDualControlion = [
    "",
    'an, auf, hinter, neben, in, über, unter, vor, zwischen',
    'an, auf, hinter, neben, in, über, unter, vor, zwischen',
    ''
  ];
  static List<String> question = [
    'Wer? Was?',
    'Wen? Was?',
    'Wem? Wo?',
    'Wessen?'
  ];
  static List<String> question2 = [
    'Wer? Was?',
    'Wen? Was?',
    'Wem? Wo?',
    'Wessen?'
  ];
  static List<String> questionRus = [
    'Wer? (Кто?) Was? (Что?)',
    'Wen? (Кого?) Was? (Что?)',
    'Wem? (Кому?) Wo? (Где?)',
    'Wessen? (Чей?)'
  ];
  static List<String> cases = ['Nominativ', 'Akkusativ', 'Dativ', 'Genitiv'];
}
