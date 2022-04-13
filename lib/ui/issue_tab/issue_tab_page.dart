import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/enum/tab_type.dart';

class IssueTabPage extends HookConsumerWidget {
  const IssueTabPage(this._type, {Key? key}) : super(key: key);

  final TabType _type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(child: Text(_type.name));
  }
}
