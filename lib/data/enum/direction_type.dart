enum DirectionType {
  desc,
  asc,
}

extension DirectionTypeX on DirectionType {
  String get title {
    switch (this) {
      case DirectionType.desc:
        return '降順';
      case DirectionType.asc:
        return '昇順';
    }
  }
}
