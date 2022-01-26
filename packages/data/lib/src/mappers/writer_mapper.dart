import 'package:domain/domain.dart';

import '../dto/writer_dto.dart';

class WriterMapper {
  static Writer mapDtoToEntity(WriterDTO writerDto) {
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
