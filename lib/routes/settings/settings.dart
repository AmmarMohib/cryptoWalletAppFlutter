import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/routes/settings/Preferences.dart';
import 'package:crypto_wallet_app/routes/settings/Price_alerts.dart';
import 'package:crypto_wallet_app/routes/settings/Wallets.dart';
import 'package:crypto_wallet_app/routes/settings/about.dart';
import 'package:crypto_wallet_app/routes/settings/contacts.dart';
import 'package:crypto_wallet_app/routes/settings/push_notifications.dart';
import 'package:crypto_wallet_app/routes/settings/scan.dart';
import 'package:crypto_wallet_app/routes/settings/security.dart';
import 'package:crypto_wallet_app/routes/settings/wallet_connect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class DarkThemePreference {
//   static const THEME_STATUS = "THEMESTATUS";

//   setDarkTheme(bool value) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool(THEME_STATUS, value);
//   }

//   // Future<bool> getTheme() async {
//   //   // SharedPreferences prefs = await SharedPreferences.getInstance();
//   //   return prefs.getBool(THEME_STATUS) ?? false;
//   // }
// }
// class DarkThemeProvider with ChangeNotifier {
//   DarkThemePreference darkThemePreference = DarkThemePreference();
//   bool _darkTheme = false;

//   bool get darkTheme => _darkTheme;

//   set darkTheme(bool value) {
//     _darkTheme = value;
//     darkThemePreference.setDarkTheme(value);
//     notifyListeners();
//   }
// }
// class Styles {

//   static ThemeData themeData(bool isDarkTheme, BuildContext context) {
//     return ThemeData(
//       primaryColor: isDarkTheme ? Colors.black : Colors.white,

//       indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),

//       hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),

//       highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
//       hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),

//       focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
//       disabledColor: Colors.grey,
//       cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
//       canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
//       brightness: isDarkTheme ? Brightness.dark : Brightness.light,
//       buttonTheme: Theme.of(context).buttonTheme.copyWith(
//           colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
//       appBarTheme: AppBarTheme(
//         elevation: 0.0,
//       ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(background: isDarkTheme ? Colors.black : Color(0xffF1F5FB)), textSelectionTheme: TextSelectionThemeData(selectionColor: isDarkTheme ? Colors.white : Colors.black),
//     );

//   }
// }
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool forIos = false;
  @override
  Widget build(BuildContext context) {
    // final themeModeProvider = Provider.of<ThemeModeProvider>(context);
    // final currentThemeMode = themeModeProvider.currentThemeMode;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(19, 210, 107, 1.0),
        toolbarHeight: 60,
        elevation: 0,
        centerTitle: false,
        title: Transform.translate(
            offset: const Offset(10, 0),
            child: const Text(
              "Settings",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WalletsScreen()));
              },
              child: ListTile(
                title: Text(
                  "Wallets",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                leading: Container(
                  height: double.infinity,
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                subtitle: Text(
                  "Main Wallet 1",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: double.infinity,
                child: const Icon(Icons.nightlight_outlined,
                    color: Colors.white, size: 20),
              ),
              title: const Text(
                "Dark Mode",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              trailing: CupertinoSwitch(
                // overrides the default green color of the track
                activeColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // color of the round icon, which moves from right to left
                thumbColor: const Color.fromRGBO(0, 51, 83, 1.0),
                // when the switch is off
                trackColor: const Color.fromRGBO(147, 202, 255, 1.0),
                // boolean variable value
                value: forIos,
                // changes the state of the switch
                onChanged: (value) {
                AdaptiveTheme.getThemeMode().then((value) => print(value));
                  AdaptiveTheme.of(context).setDark();
                  setState(() {
                    forIos = value;
                  });
                  // final newThemeMode = value ? ThemeMode.dark : ThemeMode.light;
                  // themeModeProvider.setThemeMode(newThemeMode);
                },
              ),
            ),
            const Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            _settingsItem("Price Alerts", context, "", PriceAlerts()),
            _settingsItem(
                "Contacts", context, CupertinoIcons.person_fill, Contacts()),
            _settingsItem("Scan QR Code", context, Icons.qr_code_2_outlined,
                ScanQrCode()),
            _settingsItem(
                "Wallet Connect", context, Icons.connected_tv, WalletConnect()),
            const Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            _settingsItem(
                "Preferences", context, Icons.room_preferences, Preferences()),
            _settingsItem(
                "Security", context, Icons.security_outlined, Security()),
            _settingsItem("Push Notifications", context,
                Icons.notifications_outlined, PushNotifications()),
            const Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            _settingsItem("Help Center", context, Icons.help_outline, null),
            _settingsItem("About", context, Icons.security, About()),
            const Divider(
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            _settingsItem("Twitter", context, FontAwesomeIcons.twitter, null),
            _settingsItem("Telegram", context, FontAwesomeIcons.telegram, null),
            _settingsItem("Facebook", context, FontAwesomeIcons.facebook, null),
            _settingsItem("Reddit", context, FontAwesomeIcons.reddit, null),
            _settingsItem("Youtube", context, FontAwesomeIcons.youtube, null),
          ],
        ),
      ),
    ));
  }
}

Widget _settingsItem(String title, con, icon, screenName) {
  return InkWell(
    onTap: () {
      screenName != null
          ? Navigator.push(con, MaterialPageRoute(builder: (con) => screenName))
          : null;
    },
    child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        leading: icon != ""
            ? Container(
                height: double.infinity,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 5),
                child: Text(
                  "\$",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              )),
  );
}
