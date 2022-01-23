import '../../domain/entities/verse.dart';

class Writer {
  final String name;
  final String avatar;
  final String biography;
  final List<Verse> verses;

  const Writer({
    required this.name,
    required this.avatar,
    required this.biography,
    required this.verses,
  });
}
