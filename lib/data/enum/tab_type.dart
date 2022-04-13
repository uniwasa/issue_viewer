enum TabType {
  none,
  webView,
  sharedPreferences,
  waitingForCustomerResponse,
  newFeature,
  share,
}

extension TabTypeX on TabType {
  String? get label {
    switch (this) {
      case TabType.none:
        return null;
      case TabType.webView:
        return 'p: webview';
      case TabType.sharedPreferences:
        return 'p: shared_preferences';
      case TabType.waitingForCustomerResponse:
        return 'waiting for customer response';
      case TabType.newFeature:
        return 'severe: new feature';
      case TabType.share:
        return 'p: share';
    }
  }
}
