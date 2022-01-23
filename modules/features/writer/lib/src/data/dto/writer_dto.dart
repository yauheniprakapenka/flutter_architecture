import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dto/poem_dto.dart';

part 'writer_dto.freezed.dart';

// TODO(eprakopenko): remove freezed after home work review

@freezed
class WriterDTO with _$WriterDTO {
  factory WriterDTO({
    required String name,
    required String avatar,
    required String bio,
    required List<PoemDTO> poem,
  }) = _WriterDTO;
}
