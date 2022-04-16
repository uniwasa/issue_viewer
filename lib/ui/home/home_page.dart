import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/provider/current_tab_provider.dart';
import 'package:issue_viewer/ui/filter_sheet/filter_sheet.dart';
import 'package:issue_viewer/ui/issue_tab/issue_tab_page_controller.dart';

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
          final currentTab = TabType.values[tabController.index];
          ref.read(currentTabProvider.notifier).state = currentTab;
          ref.read(issueTabPageControllerProvider(currentTab).notifier).init();
        }
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Consumer(builder: (context, ref, child) {
          final currentTab = ref.watch(currentTabProvider);
          return Text(currentTab.title);
        }),
        bottom: TabBar(
          controller: tabController,
          isScrollable: false,
          tabs: [
            for (final tabType in TabType.values)
              Tooltip(message: tabType.title, child: Tab(icon: tabType.icon))
          ],
        ),
        actions: [
          SizedBox(
            width: kToolbarHeight,
            child: IconButton(
              icon: const Icon(
                Icons.filter_list,
              ),
              onPressed: () async {
                final result = await _showFilterSheet(context);
                final currentTab = TabType.values[tabController.index];
                if (result == true) {
                  ref
                      .read(issueTabPageControllerProvider(currentTab).notifier)
                      .init();
                }
              },
            ),
          )
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          for (final tabType in TabType.values) IssueTabPage(tabType)
        ],
      ),
    );
  }

  Future<bool?> _showFilterSheet(BuildContext context) {
    return showModalBottomSheet<bool>(
      context: context,
      builder: (BuildContext context) {
        return const FilterSheet();
      },
    );
  }
}
