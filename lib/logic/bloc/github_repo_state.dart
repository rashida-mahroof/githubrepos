import 'package:git_repos/models/model.dart';

abstract class GithubState {}
class GithubInitial extends GithubState {}
class GithubLoading extends GithubState {}
class GithubLoaded extends GithubState {
  final GitHubRepoList repositories;
  final List<String?> languages;
  final String? selectedLanguage;
  final GitHubRepo? selectedRepo;
  GithubLoaded(this.repositories, this.languages, this.selectedLanguage, this.selectedRepo);
}
class GithubError extends GithubState {
  final String message;
  GithubError(this.message);
}