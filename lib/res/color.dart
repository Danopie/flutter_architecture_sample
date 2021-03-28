import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum AppTheme { Light, Dark }

class AppColor extends StatefulWidget {
  final Widget? child;

  const AppColor({Key? key, this.child}) : super(key: key);

  @override
  _AppColorState createState() => _AppColorState();

  static AppColorData of(BuildContext context) {
    return Provider.of<AppColorData>(context);
  }

  static _AppColorState? settingsOf(BuildContext context) {
    final state = context.findAncestorStateOfType<_AppColorState>();
    return state;
  }
}

class _AppColorState extends State<AppColor> with WidgetsBindingObserver {
  AppTheme _theme = AppTheme.Light;

  AppTheme get theme => _theme;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    final data =
    _theme == AppTheme.Dark ? DarkAppColorData() : AppColorData();

    return Provider<AppColorData>.value(
      value: data,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.addObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    final Brightness brightness =
        WidgetsBinding.instance!.window.platformBrightness;

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
class AppColorData {
  Color? get backgroundColor => Colors.white;
}

/// Additional asset color - dark theme
class DarkAppColorData extends AppColorData {
  @override
  Color? get backgroundColor => Colors.grey[600];
}