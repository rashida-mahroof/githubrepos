
import 'package:git_repos/models/model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GithubRepository {
  final String query = '''
    query SearchRepositories(\$queryString: String!) {
      search(query: \$queryString, type: REPOSITORY, first: 100) {
        edges {
          node {
            ... on Repository {
              name
              description
              stargazerCount
              url
              primaryLanguage {
                name
              }
            }
          }
        }
      }
    }
  ''';

  Future<GitHubRepoList> fetchRepositories(GraphQLClient client) async {
    final QueryResult result = await client.query(
      QueryOptions(
        document: gql(query),
        variables: const {'queryString': 'stars:>1000 sort:stars-desc'},
      ),
    );

    if (result.hasException) {
      throw result.exception!;
    }

   final List<GitHubRepo> repos = (result.data?['search']['edges'] as List? ?? [])
      .map((edge) => GitHubRepo.fromJson({
            'name': edge['node']['name'] as String?,
            'description': edge['node']['description'] as String?,
            'stargazerCount': edge['node']['stargazerCount'] as int?,
            'url': edge['node']['url'] as String?,
            'primaryLanguage': edge['node']['primaryLanguage']?['name'] as String?,
          }))      .toList();

  return GitHubRepoList(repos: repos);
  }
}



