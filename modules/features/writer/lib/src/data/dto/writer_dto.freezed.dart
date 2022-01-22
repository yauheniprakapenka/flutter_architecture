// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'writer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WriterDTOTearOff {
  const _$WriterDTOTearOff();

  _WriterDTO call(
      {required String name,
      required String avatar,
      required String bio,
      required List<PoemDTO> poem}) {
    return _WriterDTO(
      name: name,
      avatar: avatar,
      bio: bio,
      poem: poem,
    );
  }
}

/// @nodoc
const $WriterDTO = _$WriterDTOTearOff();

/// @nodoc
mixin _$WriterDTO {
  String get name => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<PoemDTO> get poem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WriterDTOCopyWith<WriterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriterDTOCopyWith<$Res> {
  factory $WriterDTOCopyWith(WriterDTO value, $Res Function(WriterDTO) then) =
      _$WriterDTOCopyWithImpl<$Res>;
  $Res call({String name, String avatar, String bio, List<PoemDTO> poem});
}

/// @nodoc
class _$WriterDTOCopyWithImpl<$Res> implements $WriterDTOCopyWith<$Res> {
  _$WriterDTOCopyWithImpl(this._value, this._then);

  final WriterDTO _value;
  // ignore: unused_field
  final $Res Function(WriterDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? poem = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      poem: poem == freezed
          ? _value.poem
          : poem // ignore: cast_nullable_to_non_nullable
              as List<PoemDTO>,
    ));
  }
}

/// @nodoc
abstract class _$WriterDTOCopyWith<$Res> implements $WriterDTOCopyWith<$Res> {
  factory _$WriterDTOCopyWith(
          _WriterDTO value, $Res Function(_WriterDTO) then) =
      __$WriterDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String avatar, String bio, List<PoemDTO> poem});
}

/// @nodoc
class __$WriterDTOCopyWithImpl<$Res> extends _$WriterDTOCopyWithImpl<$Res>
    implements _$WriterDTOCopyWith<$Res> {
  __$WriterDTOCopyWithImpl(_WriterDTO _value, $Res Function(_WriterDTO) _then)
      : super(_value, (v) => _then(v as _WriterDTO));

  @override
  _WriterDTO get _value => super._value as _WriterDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? poem = freezed,
  }) {
    return _then(_WriterDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      poem: poem == freezed
          ? _value.poem
          : poem // ignore: cast_nullable_to_non_nullable
              as List<PoemDTO>,
    ));
  }
}

/// @nodoc

class _$_WriterDTO with DiagnosticableTreeMixin implements _WriterDTO {
  _$_WriterDTO(
      {required this.name,
      required this.avatar,
      required this.bio,
      required this.poem});

  @override
  final String name;
  @override
  final String avatar;
  @override
  final String bio;
  @override
  final List<PoemDTO> poem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WriterDTO(name: $name, avatar: $avatar, bio: $bio, poem: $poem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WriterDTO'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('poem', poem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WriterDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.poem, poem) ||
                const DeepCollectionEquality().equals(other.poem, poem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(poem);

  @JsonKey(ignore: true)
  @override
  _$WriterDTOCopyWith<_WriterDTO> get copyWith =>
      __$WriterDTOCopyWithImpl<_WriterDTO>(this, _$identity);
}

abstract class _WriterDTO implements WriterDTO {
  factory _WriterDTO(
      {required String name,
      required String avatar,
      required String bio,
      required List<PoemDTO> poem}) = _$_WriterDTO;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get avatar => throw _privateConstructorUsedError;
  @override
  String get bio => throw _privateConstructorUsedError;
  @override
  List<PoemDTO> get poem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WriterDTOCopyWith<_WriterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
