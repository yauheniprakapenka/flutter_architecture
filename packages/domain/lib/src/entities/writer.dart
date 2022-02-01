import 'verse.dart';

class Writer {
  final int id;
  final String name;
  final String avatar;
  final String biography;
  final List<Verse> verses;

  const Writer({
    required this.id,
    required this.name,
    required this.avatar,
    required this.biography,
    required this.verses,
  });

  @override
  String toString() {
    return 'Writer(id: $id, name: $name, avatar: $avatar, biography: $biography, verses: $verses)';
  }
}
