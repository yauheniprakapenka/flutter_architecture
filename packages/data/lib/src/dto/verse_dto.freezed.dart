// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verse_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerseDTOTearOff {
  const _$VerseDTOTearOff();

  _VerseDTO call({required String title, required String text}) {
    return _VerseDTO(
      title: title,
      text: text,
    );
  }
}

/// @nodoc
const $VerseDTO = _$VerseDTOTearOff();

/// @nodoc
mixin _$VerseDTO {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerseDTOCopyWith<VerseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseDTOCopyWith<$Res> {
  factory $VerseDTOCopyWith(VerseDTO value, $Res Function(VerseDTO) then) =
      _$VerseDTOCopyWithImpl<$Res>;
  $Res call({String title, String text});
}

/// @nodoc
class _$VerseDTOCopyWithImpl<$Res> implements $VerseDTOCopyWith<$Res> {
  _$VerseDTOCopyWithImpl(this._value, this._then);

  final VerseDTO _value;
  // ignore: unused_field
  final $Res Function(VerseDTO) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VerseDTOCopyWith<$Res> implements $VerseDTOCopyWith<$Res> {
  factory _$VerseDTOCopyWith(_VerseDTO value, $Res Function(_VerseDTO) then) =
      __$VerseDTOCopyWithImpl<$Res>;
  @override
  $Res call({String title, String text});
}

/// @nodoc
class __$VerseDTOCopyWithImpl<$Res> extends _$VerseDTOCopyWithImpl<$Res>
    implements _$VerseDTOCopyWith<$Res> {
  __$VerseDTOCopyWithImpl(_VerseDTO _value, $Res Function(_VerseDTO) _then)
      : super(_value, (v) => _then(v as _VerseDTO));

  @override
  _VerseDTO get _value => super._value as _VerseDTO;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_VerseDTO(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerseDTO implements _VerseDTO {
  _$_VerseDTO({required this.title, required this.text});

  @override
  final String title;
  @override
  final String text;

  @override
  String toString() {
    return 'VerseDTO(title: $title, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerseDTO &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$VerseDTOCopyWith<_VerseDTO> get copyWith =>
      __$VerseDTOCopyWithImpl<_VerseDTO>(this, _$identity);
}

abstract class _VerseDTO implements VerseDTO {
  factory _VerseDTO({required String title, required String text}) =
      _$_VerseDTO;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerseDTOCopyWith<_VerseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
