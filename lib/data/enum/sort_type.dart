enum SortType {
  created,
  updated,
  comments,
}

extension SortTypeX on SortType {
  String get title {
    switch (this) {
      case SortType.created:
        return '作成日時';
      case SortType.updated:
        return '更新日時';
      case SortType.comments:
        return 'コメント数';
    }
  }
}
