import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum AppLanguage { Vietnamese, English }

class AssetString extends StatefulWidget {
  final Widget child;

  const AssetString({Key key, this.child}) : super(key: key);

  @override
  _AssetStringState createState() => _AssetStringState();

  static AssetStringData of(BuildContext context) {
    return Provider.of<AssetStringData>(context);
  }

  static _AssetStringState settingsOf(BuildContext context) {
    final state = context.findAncestorStateOfType<_AssetStringState>();
    return state;
  }
}

class _AssetStringState extends State<AssetString> with WidgetsBindingObserver {
  AppLanguage _language = AppLanguage.English;

  AppLanguage get language => _language;

  @override
  Widget build(BuildContext context) {
    final data =
    _language == AppLanguage.English ? EnglishStringData() : AssetStringData();

    return Provider<AssetStringData>.value(
      value: data,
      child: widget.child,
    );
  }

  void changeTheme(AppLanguage language) {
    setState(() {
      _language = language;
    });
  }
}


/// Default asset string - Vietnamese
class AssetStringData {
  String get passwordHintText => "Mật khẩu";

  String get welcomeText => "Chào mừng";

  String get loginText => "Trang Đăng nhập";

  String get usernameHintText => "Tên đăng nhập";

  String get loginButtonText => "Đăng nhập";

  get changeThemeButton => "Đổi theme";

  get logoutButton => "Đăng xuất";

  get changeLanguageButton => "Đổi ngôn ngữ";


}

/// Additional asset string - English
class EnglishStringData extends AssetStringData {
  @override
  String get welcomeText => "Welcome";

  @override
  String get loginText => "Login Page";

  @override
  String get passwordHintText => "Password";

  @override
  String get loginButtonText => "Login";

  @override
  get changeThemeButton => "Change theme";

  @override
  String get usernameHintText => "Username";

  @override
  get logoutButton => "Logout";

  @override
  get changeLanguageButton => "Change language";


}