// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDto _$$_MovieDtoFromJson(Map<String, dynamic> json) => _$_MovieDto(
      posterPath: json['poster_path'] as String,
      title: json['title'] as String,
      overview: json['overview'] as String,
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MovieDtoToJson(_$_MovieDto instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'vote_average': instance.voteAverage,
    };
