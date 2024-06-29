// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_repos/config/theme.dart';
import 'package:git_repos/logic/bloc/github_repo_bloc.dart';
import 'package:git_repos/presentation/main_screen.dart';
import 'package:git_repos/repository/home_repository.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink('https://api.github.com/graphql');
    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer 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',
    );
    final Link link = authLink.concat(httpLink);

    final GraphQLClient client = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    );

    return GraphQLProvider(
      client: ValueNotifier(client),
      child: MaterialApp(
        title: 'GitHub Popular Repos',
        theme:lightTheme,
        home: BlocProvider(
          create: (context) => GithubBloc(GithubRepository(), client),
          child:  GithubPage(),
        ),
      ),
    );
  }
}
