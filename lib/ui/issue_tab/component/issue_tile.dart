import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/model/issue.dart';
import '../../../data/enum/state_type.dart';

class IssueTile extends StatelessWidget {
  const IssueTile(this._issue, {Key? key}) : super(key: key);

  final Issue _issue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _issue.state.widget,
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#' + _issue.number.toString(),
                        style: TextStyle(color: Theme.of(context).hintColor),
                      ),
                      if (_issue.comments > 0) _buildComments(_issue.comments)
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _issue.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _buildTime(_issue.createdAt, isCreatedTime: true),
                      const SizedBox(width: 4),
                      _buildTime(_issue.updatedAt),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTime(DateTime time, {bool isCreatedTime = false}) {
    final dateFormat = DateFormat('yyyy/MM/dd HH:mm');
    const color = Colors.grey;
    return Row(
      children: [
        Icon(
          isCreatedTime ? Icons.edit : Icons.refresh,
          size: 16,
          color: color,
        ),
        const SizedBox(width: 2),
        Text(
          dateFormat.format(_issue.createdAt.toLocal()).toString(),
          style: const TextStyle(color: color),
        ),
      ],
    );
  }

  Widget _buildComments(int num) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.black38,
      ),
      child: Row(
        children: [
          const Icon(Icons.comment, size: 12, color: Colors.white),
          const SizedBox(width: 2),
          Text(
            num.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
