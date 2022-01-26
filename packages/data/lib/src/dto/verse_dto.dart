import 'package:freezed_annotation/freezed_annotation.dart';

part 'verse_dto.freezed.dart';

@freezed
class VerseDTO with _$VerseDTO {
  factory VerseDTO({
    required String title,
    required String text,
  }) = _VerseDTO;
}
