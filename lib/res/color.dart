import 'package:flutter/material.dart';
import 'package:lightweight_bloc/lightweight_bloc.dart';
import 'package:provider/provider.dart';

enum AppTheme { Light, Dark }

class AssetColor extends StatefulWidget {
  final Widget child;

  const AssetColor({Key key, this.child}) : super(key: key);

  @override
  _AssetColorState createState() => _AssetColorState();

  static AssetColorData of(BuildContext context) {
    return Provider.of<AssetColorData>(context);
  }

  static _AssetColorState settingsOf(BuildContext context) {
    final state = context.findAncestorStateOfType<_AssetColorState>();
    return state;
  }
}

class _AssetColorState extends State<AssetColor> with WidgetsBindingObserver {
  AppTheme _theme = AppTheme.Light;

  AppTheme get theme => _theme;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    final data =
    _theme == AppTheme.Dark ? DarkAssetColorData() : AssetColorData();

    return Provider<AssetColorData>.value(
      value: data,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.addObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    final Brightness brightness =
        WidgetsBinding.instance.window.platformBrightness;

    setState(() {
      _theme = brightness == Brightness.dark? AppTheme.Dark: AppTheme.Light;
    });
  }

  void changeTheme(AppTheme theme) {
    setState(() {
      _theme = theme;
    });
  }
}

/// Default asset color - light theme
class AssetColorData {
  Color get backgroundColor => Colors.white;
}

/// Additional asset color - dark theme
class DarkAssetColorData extends AssetColorData {
  @override
  Color get backgroundColor => Colors.grey[600];
}