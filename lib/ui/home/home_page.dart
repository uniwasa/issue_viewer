import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/enum/tab_type.dart';
import '../issue_tab/issue_tab_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: TabType.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            isScrollable: true,
            tabs: [
              for (final tabType in TabType.values) Tab(text: tabType.name)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            for (final tabType in TabType.values) IssueTabPage(tabType)
          ],
        ),
      ),
    );
  }
}
