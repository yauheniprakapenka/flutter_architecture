import '../../data/dto/writer_dto.dart';
import '../../domain/entities/verse.dart';
import '../../domain/entities/writer.dart';

// TODO(eprakopenko): move to WriterDTO after home work review

class WriterMapper {
  static Writer mapToDomain(WriterDTO writerDto) {
    final verseList = writerDto.verses.map((verse) {
      return Verse(title: verse.title, text: verse.text);
    }).toList();

    return Writer(
      name: writerDto.name,
      avatar: writerDto.avatar,
      biography: writerDto.biography,
      verses: verseList,
    );
  }
}
