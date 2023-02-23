// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesResponseDto _$MoviesResponseDtoFromJson(Map<String, dynamic> json) {
  return _MoviesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$MoviesResponseDto {
  List<MovieDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesResponseDtoCopyWith<MoviesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResponseDtoCopyWith<$Res> {
  factory $MoviesResponseDtoCopyWith(
          MoviesResponseDto value, $Res Function(MoviesResponseDto) then) =
      _$MoviesResponseDtoCopyWithImpl<$Res, MoviesResponseDto>;
  @useResult
  $Res call({List<MovieDto> results});
}

/// @nodoc
class _$MoviesResponseDtoCopyWithImpl<$Res, $Val extends MoviesResponseDto>
    implements $MoviesResponseDtoCopyWith<$Res> {
  _$MoviesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoviesResponseDtoCopyWith<$Res>
    implements $MoviesResponseDtoCopyWith<$Res> {
  factory _$$_MoviesResponseDtoCopyWith(_$_MoviesResponseDto value,
          $Res Function(_$_MoviesResponseDto) then) =
      __$$_MoviesResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieDto> results});
}

/// @nodoc
class __$$_MoviesResponseDtoCopyWithImpl<$Res>
    extends _$MoviesResponseDtoCopyWithImpl<$Res, _$_MoviesResponseDto>
    implements _$$_MoviesResponseDtoCopyWith<$Res> {
  __$$_MoviesResponseDtoCopyWithImpl(
      _$_MoviesResponseDto _value, $Res Function(_$_MoviesResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_MoviesResponseDto(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesResponseDto implements _MoviesResponseDto {
  const _$_MoviesResponseDto({required final List<MovieDto> results})
      : _results = results;

  factory _$_MoviesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesResponseDtoFromJson(json);

  final List<MovieDto> _results;
  @override
  List<MovieDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MoviesResponseDto(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesResponseDto &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesResponseDtoCopyWith<_$_MoviesResponseDto> get copyWith =>
      __$$_MoviesResponseDtoCopyWithImpl<_$_MoviesResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesResponseDtoToJson(
      this,
    );
  }
}

abstract class _MoviesResponseDto implements MoviesResponseDto {
  const factory _MoviesResponseDto({required final List<MovieDto> results}) =
      _$_MoviesResponseDto;

  factory _MoviesResponseDto.fromJson(Map<String, dynamic> json) =
      _$_MoviesResponseDto.fromJson;

  @override
  List<MovieDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesResponseDtoCopyWith<_$_MoviesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
