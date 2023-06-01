import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:crypto_wallet_app/routes/login/login.dart';
import 'package:crypto_wallet_app/routes/settings/settings.dart';
import 'package:crypto_wallet_app/routes/wallet/create_wallet.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  //  providers: [
  //       ChangeNotifierProvider(create: (_) => ThemeModeProvider()),
  //       // other providers here
  //     ],
  // initialization();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp(mode: savedThemeMode));
}

void initialization() async {
  // This is where you can initialize the resources needed by your app while
  // the splash screen is displayed.  Remove the following example because
  // delaying the user experience is a bad design practice!
  // ignore_for_file: avoid_print
  print('ready in 3...');
  // await Future.delayed(const Duration(seconds: 3));
  print('ready in 2...');
  // await Future.delayed(const Duration(seconds: 3));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 3));
  print('go!');
  FlutterNativeSplash.remove();
}

class MyApp extends StatefulWidget {
  final mode;
  const MyApp({super.key, this.mode});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
    // getCurrentAppTheme();
  }
// DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

// void getCurrentAppTheme() async {
//   themeChangeProvider.darkTheme =
//       await themeChangeProvider.darkThemePreference.getTheme();
// }
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
      ),
        initial: widget.mode ?? AdaptiveThemeMode.light,
      // initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme Demo',
        theme: theme,        darkTheme: darkTheme,
        home: LoginScreen(),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Theme Demo',
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primaryColor: Colors.blue,
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         primaryColor: Colors.blueGrey,
//       ),
//       home: ThemeChanger(),
//     );
//   }
// }

// class ThemeChanger extends StatefulWidget {
//   @override
//   _ThemeChangerState createState() => _ThemeChangerState();
// }

// class _ThemeChangerState extends State<ThemeChanger> {
//   bool _isDark = false;

//   void _toggleTheme() {
//     setState(() {
//       _isDark = !_isDark;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Theme Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Toggle Theme:',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//             Switch(
//               value: _isDark,
//               onChanged: (value) {
//                 _toggleTheme();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     ThemeData theme = Theme.of(context);
//     if (theme.brightness == Brightness.dark) {
//       _isDark = true;
//     } else {
//       _isDark = false;
//     }
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _isDarkMode = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Theme Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         brightness: _isDarkMode ? Brightness.dark : Brightness.light,
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.green,
//         appBar: AppBar(
//           title: Text('Flutter Theme Demo'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Toggle Theme',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                 ),
//               ),
//               Switch(
//                 value: _isDarkMode,
//                 onChanged: (value) {
//                   setState(() {
//                     _isDarkMode = value;
//                   });
//                 },
//               ),
//               SizedBox(height: 20.0),
//               Text(
//                 'This is an example of a themed text.',
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
