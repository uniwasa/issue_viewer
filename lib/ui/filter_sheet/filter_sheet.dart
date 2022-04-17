import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/enum/direction_type.dart';
import 'package:issue_viewer/data/enum/sort_type.dart';
import 'package:issue_viewer/ui/filter_sheet/filter_sheet_controller.dart';

class FilterSheet extends HookConsumerWidget {
  const FilterSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filterSheetControllerProvider);

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            // Closed除外するか
            CheckboxListTile(
              onChanged: (bool? value) {
                ref
                    .read(filterSheetControllerProvider.notifier)
                    .handleOnlyOpen(value ?? false);
              },
              value: state.onlyOpen,
              title: const Text('Closed状態のIssueを除外'),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            // 1年以内か
            CheckboxListTile(
              onChanged: (bool? value) {
                ref
                    .read(filterSheetControllerProvider.notifier)
                    .handlePastYear(value ?? false);
              },
              value: state.pastYear,
              title: const Text('1年以上更新のないIssueを除外'),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            // ソート項目
            ListTile(
              title: DropdownButtonFormField<SortType>(
                decoration: _dropdownDecoration(Icons.sort),
                items: [
                  for (final sortType in SortType.values)
                    DropdownMenuItem(
                        value: sortType, child: Text(sortType.title)),
                ],
                value: state.sortType,
                onChanged: (value) {
                  ref
                      .read(filterSheetControllerProvider.notifier)
                      .handleSortType(value!);
                },
              ),
            ),

            // ソート方向
            ListTile(
              title: DropdownButtonFormField<DirectionType>(
                decoration: _dropdownDecoration(Icons.swap_vert),
                items: [
                  for (final directionType in DirectionType.values)
                    DropdownMenuItem(
                        value: directionType, child: Text(directionType.title)),
                ],
                value: state.directionType,
                onChanged: (value) {
                  ref
                      .read(filterSheetControllerProvider.notifier)
                      .handleDirectionType(value!);
                },
              ),
            ),

            // 更新ボタン
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  ref.read(filterSheetControllerProvider.notifier).save();
                  Navigator.of(context).pop(true);
                },
                child: const Text('更新する'),
              ),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration _dropdownDecoration(IconData icon) {
    return InputDecoration(
      prefixIcon: Icon(icon, color: Colors.grey),
      filled: true,
      fillColor: Colors.black12,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none),
    );
  }
}
