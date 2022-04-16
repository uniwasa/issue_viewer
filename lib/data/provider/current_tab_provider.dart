import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/enum/tab_type.dart';

final currentTabProvider =
    StateProvider<TabType>((ref) => TabType.values.first);
