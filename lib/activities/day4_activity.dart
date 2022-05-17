class Pokemon {
  final String _name;
  final String _type;
  final List<String> _element;
  final Map<String, double> _size;
  final String _sound;
  final String _ability;

  const Pokemon(
      {required String name,
      required String type,
      required List<String> element,
      required Map<String, double> size,
      required String sound,
      required String ability})
      : _name = name,
        _type = type,
        _element = element,
        _size = size,
        _sound = sound,
        _ability = ability;

  String attack() => 'Attack: $_ability';

  String cry() => 'Cry: This produces a "$_sound" sound';

  @override
  String toString() {
    return 'Name: $_name\n'
        'Type: $_type\n'
        'Elements: ${_element[0]}, ${_element[1]}\n'
        'Height: ${_size['Height']} inches\n'
        'Weight: ${_size['Weight']} lbs\n'
        'Sound: $_sound\n';
  }
}
