import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shack15/routeGenerator/routeGenerator.dart';
import 'package:shack15/themes/themeData.dart';
import 'package:shack15/themes/themeToggle.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeModel>(
          create: (context) => ThemeModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(builder: (_, themeModel, __) {
      themeModel.fetchTheme();
      return MaterialApp(
        title: 'SHACK15',
        themeMode: themeModel.mode,
        theme: lighThemeData(context),
        /*Dark Theme Colors are not yet certain (confirmed) hence it being commented out */
        //darkTheme: darkThemeData(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
