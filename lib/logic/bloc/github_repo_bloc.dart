import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_repos/logic/bloc/github_repo_event.dart';
import 'package:git_repos/models/model.dart';
import 'package:git_repos/repository/home_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'github_repo_state.dart';

class GithubBloc extends Bloc<GithubEvent, GithubState> {
  final GithubRepository repository;
  final GraphQLClient client;
  GitHubRepoList allRepositories = GitHubRepoList();

  GithubBloc(this.repository, this.client) : super(GithubInitial()) {
    on<FetchRepositories>((event, emit) async {
      emit(GithubLoading());
      try {
        allRepositories = await repository.fetchRepositories(client);
        
        emit(GithubLoaded(allRepositories,allRepositories. languages, null,null));
      } catch (e) {
        emit(GithubError(e.toString()));
      }
    });

    on<FilterRepositories>((event, emit) {
      if (state is GithubLoaded) {
        final currentState = state as GithubLoaded;
        final filteredRepos = event.language == null
            ? allRepositories
            : GitHubRepoList(
                repos: allRepositories.repos
                    .where((repo) => repo.primaryLanguage == event.language)
                    .toList(),
              );
        emit(GithubLoaded(filteredRepos, currentState.languages, event.language,null));
      }
    });
  }

 
}