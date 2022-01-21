import '../../data/dto/poem_dto.dart';

class WriterDTO {
  final String name;
  final String avatar;
  final String bio;
  final List<PoemDTO> poem;

  const WriterDTO({
    required this.name,
    required this.avatar,
    required this.bio,
    required this.poem,
  });
}
