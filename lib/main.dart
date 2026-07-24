import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/routes/app_router.dart';
import 'config/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase, local storage, etc.
  runApp(
    const ProviderScope(
      child: FlashApp(),
    ),
  );
}

class FlashApp extends ConsumerWidget {
  const FlashApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Flash',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}

// Top-level variable declaration
const String myVariable = "value";

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 5;

  void updateCounter() {
    setState(() {
      counter = 5;
    });
    print(counter);
  }

  void myMethod() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
