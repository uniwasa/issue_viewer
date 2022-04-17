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
        final error = data.error;

        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification.metrics.extentAfter < 100 && error == null) {
              WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
                ref
                    .read(issueTabPageControllerProvider(_type).notifier)
                    .getNext();
              });
            }
            return false;
          },
          child: RefreshIndicator(
            onRefresh: () async {
              await ref
                  .read(issueTabPageControllerProvider(_type).notifier)
                  .getFirst();
            },
            child: CustomScrollView(
              key: PageStorageKey(_type),
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                // 空でなければ
                if (issues.isNotEmpty)
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return IssueTile(issues[index]);
                      },
                      childCount: issues.length,
                    ),
                  )
                // 空ならば
                else
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.folder_off, color: Colors.grey),
                        Text('該当なし', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),

                // 次を読み込み中なら
                if (loadingNext)
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 128,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                // 次を読み込み中にエラーが起きた場合
                if (error != null)
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 128,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () async {
                              await ref
                                  .read(issueTabPageControllerProvider(_type)
                                      .notifier)
                                  .getNext();
                            },
                            icon: const Icon(Icons.restart_alt,
                                color: Colors.grey),
                          ),
                          const Text('読み込みに失敗しました',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
        );
      },
      error: (error, _) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, color: Colors.grey),
            const Text('読み込みに失敗しました', style: TextStyle(color: Colors.grey)),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () async {
                await ref
                    .read(issueTabPageControllerProvider(_type).notifier)
                    .retryFirst();
              },
              child: const Text('再読み込み'),
            ),
          ],
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
