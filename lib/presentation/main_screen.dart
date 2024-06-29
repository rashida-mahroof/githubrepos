// ignore_for_file: use_key_in_widget_constructors, unnecessary_const, prefer_const_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_repos/logic/bloc/github_repo_bloc.dart';
import 'package:git_repos/logic/bloc/github_repo_event.dart';
import 'package:git_repos/logic/bloc/github_repo_state.dart';

class GithubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popular GitHub Repositories')),
      body: BlocBuilder<GithubBloc, GithubState>(
        builder: (context, state) {
          if (state is GithubInitial) {
            BlocProvider.of<GithubBloc>(context).add(FetchRepositories());
            return const Center(child: const CircularProgressIndicator());
          } else if (state is GithubLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GithubLoaded) {
            return Column(
              children: [
                LanguageDropdown(
                  languages: state.languages,
                  selectedLanguage: state.selectedLanguage,
                  onChanged: (String? newValue) {
                    BlocProvider.of<GithubBloc>(context).add(FilterRepositories(
                        newValue == 'All' ? null : newValue));
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.repositories.repos.length,
                    itemBuilder: (context, index) {
                      final repo = state.repositories.repos[index];
                      return Card(
                        child: ListTile(
                          leading: const CircleAvatar(
                            child: Icon(Icons.code),
                          ),
                          title: Text(
                            repo.name ?? '',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          subtitle: Text(
                            repo.description ?? 'No description',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Wrap(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    size: 15,
                                  ),
                                  Text('${repo.stargazerCount}'),
                                ],
                              ),
                              Text(
                                repo.primaryLanguage ?? 'Unknown',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                          onTap: () {
                            
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              builder: (context) => DraggableScrollableSheet(
                                initialChildSize: 0.6,
                                minChildSize: 0.3,
                                maxChildSize: 0.9,
                                expand: false,
                                builder: (_, controller) =>
                                    SingleChildScrollView(
                                  controller: controller,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          repo.name ?? '',
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          repo.description ?? 'No description',
                                        ),
                                        const SizedBox(height: 16),
                                        Row(children: [
                                          Icon(
                                            Icons.star,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            '${repo.stargazerCount} stars',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ]),
                                        const SizedBox(height: 8),
                                        Row(children: [
                                          const SizedBox(width: 8),
                                          Text(
                                            'Primary Language: ${repo.primaryLanguage ?? 'Unknown'}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ]),
                                        const SizedBox(height: 16),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (state is GithubError) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error,
                    color: Theme.of(context).colorScheme.error,
                    size: 90,
                  ),
                  Text(
                    'Error: ${state.message}',
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}

class LanguageDropdown extends StatelessWidget {
  final List<String?> languages;
  final String? selectedLanguage;
  final void Function(String?) onChanged;

  const LanguageDropdown({
    super.key,
    required this.languages,
    required this.selectedLanguage,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownSearch<String?>(
        selectedItem: selectedLanguage ?? 'All',
        items: languages,
        onChanged: onChanged,
        dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                prefixIcon: Icon(Icons.language),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                hintText: 'Select Language',
                hintStyle: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Theme.of(context).colorScheme.onSecondary),
                border: InputBorder.none,
                label: Text('Language'))),
        dropdownButtonProps: DropdownButtonProps(),
      ),
    );
  }
}
