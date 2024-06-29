// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitHubRepo _$GitHubRepoFromJson(Map<String, dynamic> json) {
  return _GitHubRepo.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepo {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get stargazerCount => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get primaryLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepoCopyWith<GitHubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepoCopyWith<$Res> {
  factory $GitHubRepoCopyWith(
          GitHubRepo value, $Res Function(GitHubRepo) then) =
      _$GitHubRepoCopyWithImpl<$Res, GitHubRepo>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      int? stargazerCount,
      String? url,
      String? primaryLanguage});
}

/// @nodoc
class _$GitHubRepoCopyWithImpl<$Res, $Val extends GitHubRepo>
    implements $GitHubRepoCopyWith<$Res> {
  _$GitHubRepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? stargazerCount = freezed,
    Object? url = freezed,
    Object? primaryLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazerCount: freezed == stargazerCount
          ? _value.stargazerCount
          : stargazerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryLanguage: freezed == primaryLanguage
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubRepoImplCopyWith<$Res>
    implements $GitHubRepoCopyWith<$Res> {
  factory _$$GitHubRepoImplCopyWith(
          _$GitHubRepoImpl value, $Res Function(_$GitHubRepoImpl) then) =
      __$$GitHubRepoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      int? stargazerCount,
      String? url,
      String? primaryLanguage});
}

/// @nodoc
class __$$GitHubRepoImplCopyWithImpl<$Res>
    extends _$GitHubRepoCopyWithImpl<$Res, _$GitHubRepoImpl>
    implements _$$GitHubRepoImplCopyWith<$Res> {
  __$$GitHubRepoImplCopyWithImpl(
      _$GitHubRepoImpl _value, $Res Function(_$GitHubRepoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? stargazerCount = freezed,
    Object? url = freezed,
    Object? primaryLanguage = freezed,
  }) {
    return _then(_$GitHubRepoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazerCount: freezed == stargazerCount
          ? _value.stargazerCount
          : stargazerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryLanguage: freezed == primaryLanguage
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubRepoImpl implements _GitHubRepo {
  _$GitHubRepoImpl(
      {this.name,
      this.description,
      this.stargazerCount,
      this.url,
      this.primaryLanguage});

  factory _$GitHubRepoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubRepoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? stargazerCount;
  @override
  final String? url;
  @override
  final String? primaryLanguage;

  @override
  String toString() {
    return 'GitHubRepo(name: $name, description: $description, stargazerCount: $stargazerCount, url: $url, primaryLanguage: $primaryLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubRepoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazerCount, stargazerCount) ||
                other.stargazerCount == stargazerCount) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.primaryLanguage, primaryLanguage) ||
                other.primaryLanguage == primaryLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, stargazerCount, url, primaryLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubRepoImplCopyWith<_$GitHubRepoImpl> get copyWith =>
      __$$GitHubRepoImplCopyWithImpl<_$GitHubRepoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubRepoImplToJson(
      this,
    );
  }
}

abstract class _GitHubRepo implements GitHubRepo {
  factory _GitHubRepo(
      {final String? name,
      final String? description,
      final int? stargazerCount,
      final String? url,
      final String? primaryLanguage}) = _$GitHubRepoImpl;

  factory _GitHubRepo.fromJson(Map<String, dynamic> json) =
      _$GitHubRepoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get stargazerCount;
  @override
  String? get url;
  @override
  String? get primaryLanguage;
  @override
  @JsonKey(ignore: true)
  _$$GitHubRepoImplCopyWith<_$GitHubRepoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitHubRepoList _$GitHubRepoListFromJson(Map<String, dynamic> json) {
  return _GitHubRepoList.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepoList {
  List<GitHubRepo> get repos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepoListCopyWith<GitHubRepoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepoListCopyWith<$Res> {
  factory $GitHubRepoListCopyWith(
          GitHubRepoList value, $Res Function(GitHubRepoList) then) =
      _$GitHubRepoListCopyWithImpl<$Res, GitHubRepoList>;
  @useResult
  $Res call({List<GitHubRepo> repos});
}

/// @nodoc
class _$GitHubRepoListCopyWithImpl<$Res, $Val extends GitHubRepoList>
    implements $GitHubRepoListCopyWith<$Res> {
  _$GitHubRepoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
  }) {
    return _then(_value.copyWith(
      repos: null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubRepoListImplCopyWith<$Res>
    implements $GitHubRepoListCopyWith<$Res> {
  factory _$$GitHubRepoListImplCopyWith(_$GitHubRepoListImpl value,
          $Res Function(_$GitHubRepoListImpl) then) =
      __$$GitHubRepoListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GitHubRepo> repos});
}

/// @nodoc
class __$$GitHubRepoListImplCopyWithImpl<$Res>
    extends _$GitHubRepoListCopyWithImpl<$Res, _$GitHubRepoListImpl>
    implements _$$GitHubRepoListImplCopyWith<$Res> {
  __$$GitHubRepoListImplCopyWithImpl(
      _$GitHubRepoListImpl _value, $Res Function(_$GitHubRepoListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
  }) {
    return _then(_$GitHubRepoListImpl(
      repos: null == repos
          ? _value._repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubRepoListImpl implements _GitHubRepoList {
  _$GitHubRepoListImpl({final List<GitHubRepo> repos = const []})
      : _repos = repos;

  factory _$GitHubRepoListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubRepoListImplFromJson(json);

  final List<GitHubRepo> _repos;
  @override
  @JsonKey()
  List<GitHubRepo> get repos {
    if (_repos is EqualUnmodifiableListView) return _repos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repos);
  }

  @override
  String toString() {
    return 'GitHubRepoList(repos: $repos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubRepoListImpl &&
            const DeepCollectionEquality().equals(other._repos, _repos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_repos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubRepoListImplCopyWith<_$GitHubRepoListImpl> get copyWith =>
      __$$GitHubRepoListImplCopyWithImpl<_$GitHubRepoListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubRepoListImplToJson(
      this,
    );
  }
}

abstract class _GitHubRepoList implements GitHubRepoList {
  factory _GitHubRepoList({final List<GitHubRepo> repos}) =
      _$GitHubRepoListImpl;

  factory _GitHubRepoList.fromJson(Map<String, dynamic> json) =
      _$GitHubRepoListImpl.fromJson;

  @override
  List<GitHubRepo> get repos;
  @override
  @JsonKey(ignore: true)
  _$$GitHubRepoListImplCopyWith<_$GitHubRepoListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
