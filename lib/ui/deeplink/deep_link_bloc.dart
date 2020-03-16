import 'dart:async';

import 'package:flutter/services.dart' show PlatformException;
import 'package:flutter_architecture_sample/ui/router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';
import 'package:uni_links/uni_links.dart';

part 'deep_link_bloc.freezed.dart';

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
  DeepLinkState get initialState => DeepLinkState.loading();

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

      update(DeepLinkState.doneLoading(routeName: routeName));
    }
  }
}

@freezed
abstract class DeepLinkState with _$DeepLinkState {
  const factory DeepLinkState.loading() = DeepLinkLoading;
  const factory DeepLinkState.doneLoading({String routeName}) =
      DeepLinkDoneLoading;
}
