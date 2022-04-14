import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
            CheckboxListTile(
              onChanged: (bool? value) {
                ref
                    .read(filterSheetControllerProvider.notifier)
                    .handleOnlyOpen(value ?? false);
              },
              value: state.onlyOpen,
              title: const Text('Closed除外'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              onChanged: (bool? value) {
                ref
                    .read(filterSheetControllerProvider.notifier)
                    .handlePastYear(value ?? false);
              },
              value: state.pastYear,
              title: const Text('1年以内'),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            for (final sortType in SortType.values)
              RadioListTile<SortType>(
                value: sortType,
                groupValue: state.sortType,
                title: Text(sortType.name),
                onChanged: (value) {
                  ref
                      .read(filterSheetControllerProvider.notifier)
                      .handleRadio(value!);
                },
              ),
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
}
