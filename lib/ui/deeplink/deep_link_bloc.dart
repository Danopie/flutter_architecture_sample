import 'dart:async';

import 'package:flutter/services.dart' show PlatformException;
import 'package:flutter_architecture_sample/ui/router.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';
import 'package:uni_links/uni_links.dart';

class DeepLinkBloc extends Bloc<DeepLinkState> {
  StreamSubscription _sub;
  @override
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
  DeepLinkState get initialState => DeepLinkState(id: DeepLinkState.LOADING);

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
      Router.push("/$routeName", arguments: routeName);

      update(latestState.copyWith(
          id: DeepLinkState.DONE_LOADING, routeName: routeName));
    }
  }
}

class DeepLinkState {
  static const LOADING = 0;
  static const DONE_LOADING = 1;
  final int id;
  final String routeName;

  const DeepLinkState({
    this.id,
    this.routeName,
  });

  DeepLinkState copyWith({
    int id,
    String routeName,
  }) {
    return DeepLinkState(
      id: id ?? this.id,
      routeName: routeName ?? this.routeName,
    );
  }
}
