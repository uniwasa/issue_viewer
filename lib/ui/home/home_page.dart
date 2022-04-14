import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/enum/tab_type.dart';
import '../issue_tab/issue_tab_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController =
        useTabController(initialLength: TabType.values.length);

    useEffect(() {
      void listener() {
        if (!tabController.indexIsChanging) {
          print(tabController.index);
        }
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: [for (final tabType in TabType.values) Tab(text: tabType.name)],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          for (final tabType in TabType.values) IssueTabPage(tabType)
        ],
      ),
    );
  }
}
