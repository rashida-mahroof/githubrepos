// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubRepoImpl _$$GitHubRepoImplFromJson(Map<String, dynamic> json) =>
    _$GitHubRepoImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      stargazerCount: (json['stargazerCount'] as num?)?.toInt(),
      url: json['url'] as String?,
      primaryLanguage: json['primaryLanguage'] as String?,
    );

Map<String, dynamic> _$$GitHubRepoImplToJson(_$GitHubRepoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'stargazerCount': instance.stargazerCount,
      'url': instance.url,
      'primaryLanguage': instance.primaryLanguage,
    };

_$GitHubRepoListImpl _$$GitHubRepoListImplFromJson(Map<String, dynamic> json) =>
    _$GitHubRepoListImpl(
      repos: (json['repos'] as List<dynamic>?)
              ?.map((e) => GitHubRepo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GitHubRepoListImplToJson(
        _$GitHubRepoListImpl instance) =>
    <String, dynamic>{
      'repos': instance.repos,
    };
