import 'package:flutter/material.dart';

enum StateType {
  open,
  closed,
}

extension StateTypeX on StateType {
  Widget get widget {
    if (this == StateType.open) {
      return const Icon(Icons.adjust, color: Colors.green);
    } else {
      return const Icon(Icons.check_circle_outline, color: Colors.redAccent);
    }
  }
}
