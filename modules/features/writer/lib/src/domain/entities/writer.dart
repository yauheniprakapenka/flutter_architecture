import '../../domain/entities/poem.dart';

class Writer {
  final String name;
  final String avatar;
  final List<Poem> poem;

  const Writer({
    required this.name,
    required this.avatar,
    required this.poem,
  });
}
