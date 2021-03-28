import 'dart:async';

import 'package:flutter/services.dart' show PlatformException;
import 'package:flutter_architecture_sample/core/router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uni_links/uni_links.dart';

part 'deep_link_controller.freezed.dart';

class DeepLinkController extends StateNotifier<DeepLinkState> {
  StreamSubscription _sub;

  DeepLinkController() : super(DeepLinkState.loading()) {
    init();
  }

  void init() async {
    try {
      String initialLink = await getInitialLink();
      if (initialLink != null) {
        _handleNewLink(initialLink);
      }
      // Parse the link and warn the user, if it is not correct,
      // but keep in mind it could be `null`.
    } on PlatformException {
      // Handle exception by warning the user their action did not succeed
      // return?
    }

    _sub = getLinksStream().listen((String link) {
      print(link);
      _handleNewLink(link);
    }, onError: (err) {});
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  void _handleNewLink(String link) {
    String routeName;
    final uri = Uri.tryParse(link);
    if (uri == null) {
      routeName = link;
    } else {
      routeName = uri.pathSegments.join("/");
    }

    if (routeName != null && routeName.isNotEmpty) {
      AppRouter.push("/$routeName", arguments: routeName);

      state = DeepLinkState.doneLoading(routeName: routeName);
    }
  }
}

@freezed
abstract class DeepLinkState with _$DeepLinkState {
  const factory DeepLinkState.loading() = DeepLinkLoading;
  const factory DeepLinkState.doneLoading({String routeName}) =
      DeepLinkDoneLoading;
}
