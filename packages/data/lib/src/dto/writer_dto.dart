import 'package:freezed_annotation/freezed_annotation.dart';

import 'verse_dto.dart';

part 'writer_dto.freezed.dart';

@freezed
class WriterDTO with _$WriterDTO {
  factory WriterDTO({
    required int id,
    required String name,
    required String avatar,
    required String biography,
    required List<VerseDTO> verses,
  }) = _WriterDTO;
}
