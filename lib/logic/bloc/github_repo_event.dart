abstract class GithubEvent {}
class FetchRepositories extends GithubEvent {}
class FilterRepositories extends GithubEvent {
  final String? language;
  FilterRepositories(this.language);
}