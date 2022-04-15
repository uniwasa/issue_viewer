import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/ui/issue_tab/component/issue_tile.dart';

import '../../data/enum/tab_type.dart';
import 'issue_tab_page_controller.dart';

class IssueTabPage extends HookConsumerWidget {
  const IssueTabPage(this._type, {Key? key}) : super(key: key);

  final TabType _type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(issueTabPageControllerProvider(_type));
    return state.when(
      data: (data) {
        final issues = data.issues;
        final loadingNext = data.loadingNext;
        print(issues.length);

        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification.metrics.extentAfter < 100) {
              WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
                ref
                    .read(issueTabPageControllerProvider(_type).notifier)
                    .getNext();
              });
            }
            return false;
          },
          child: CustomScrollView(
            key: PageStorageKey(_type),
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return IssueTile(issues[index]);
                  },
                  childCount: issues.length,
                ),
              ),
              if (loadingNext)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                )
            ],
          ),
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
