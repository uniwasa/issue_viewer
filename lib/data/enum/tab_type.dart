import 'package:flutter/material.dart';

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

  Widget get icon {
    switch (this) {
      case TabType.none:
        return const Icon(Icons.apps);
      case TabType.webView:
        return const Icon(Icons.language);
      case TabType.sharedPreferences:
        return const Icon(Icons.build);
      case TabType.waitingForCustomerResponse:
        return const Icon(Icons.pause_circle);
      case TabType.newFeature:
        return const Icon(Icons.fiber_new);
      case TabType.share:
        return const Icon(Icons.share);
    }
  }

  String get title {
    switch (this) {
      case TabType.none:
        return 'All';
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
