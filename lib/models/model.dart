import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class GitHubRepo with _$GitHubRepo {
  factory GitHubRepo({
    String? name,
    String? description,
    int? stargazerCount,
    String? url,
    String? primaryLanguage,
  }) = _GitHubRepo;

  factory GitHubRepo.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepoFromJson(json);
}

@freezed
class GitHubRepoList with _$GitHubRepoList {
  factory GitHubRepoList({
    @Default([]) List<GitHubRepo> repos,
  }) = _GitHubRepoList;

  factory GitHubRepoList.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepoListFromJson(json);
}

extension GitHubRepoListExt on GitHubRepoList {
  List<String?> get languages {
    final languageSet = repos
        .map((repo) => repo.primaryLanguage)
        .where((lang) => lang != null)
        .toSet();
    return ['All', ...languageSet].toList();
  }
}
