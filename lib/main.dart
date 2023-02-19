import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix_clone/presentation/pages/home/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: ((context, child) {
        return MaterialApp(
          title: 'My App',
          darkTheme: ThemeData.dark(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          themeMode: ThemeMode.dark,
          home: const HomePage(),
        );
      }),
    );
  }
}
