enum SortType {
  createdDesc,
  updatedAsc,
  commentsDesc,
}

extension SortTypeX on SortType {
  String get sort {
    switch (this) {
      case SortType.createdDesc:
        return 'created';
      case SortType.updatedAsc:
        return 'updated';
      case SortType.commentsDesc:
        return 'comments';
    }
  }

  String get direction {
    switch (this) {
      case SortType.createdDesc:
        return 'desc';
      case SortType.updatedAsc:
        return 'asc';
      case SortType.commentsDesc:
        return 'desc';
    }
  }
}
