import 'verse_dto.dart';

class WriterDTO {
  final int id;
  final String name;
  final String avatar;
  final String biography;
  final List<VerseDTO> verses;

  WriterDTO({
    required this.id,
    required this.name,
    required this.avatar,
    required this.biography,
    required this.verses,
  });
}
