import '../../domain/entities/poem.dart';

class Writer {
  final String name;
  final String avatar;
  final String bio;
  final List<Poem> poem;

  const Writer({
    required this.name,
    required this.avatar,
    required this.bio,
    required this.poem,
  });
}
