import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/enum/tab_type.dart';
import 'issue_tab_page_controller.dart';

class IssueTabPage extends HookConsumerWidget {
  const IssueTabPage(this._type, {Key? key}) : super(key: key);

  final TabType _type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(issueTabPageControllerProvider(_type));
    return state.when(
      data: (issues) {
        return ListView.builder(
          itemCount: issues.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(issues[index].title),
            );
          },
        );
      },
      error: (error, _) => Center(
        child: Text(error.toString()),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
