import '../../data/dto/writer_dto.dart';
import '../../domain/entities/poem.dart';
import '../../domain/entities/writer.dart';

class WriterMapper {
  static Writer dtoToEntity(WriterDTO writerDTO) {
    final poem = writerDTO.poem.map((e) {
      return Poem(title: e.title, poem: e.poem);
    }).toList();

    return Writer(
      name: writerDTO.name,
      avatar: writerDTO.avatar,
      bio: writerDTO.bio,
      poem: poem,
    );
  }
}
