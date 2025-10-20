import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/isar_service.dart';
import 'services/supabase_service.dart';
import 'pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isarService = IsarService();
  await isarService.initDB();
  final supa = SupabaseService();
  await supa.init();
  runApp(MyApp(isar: isarService, supabase: supa));
}

class MyApp extends StatelessWidget {
  final IsarService isar;
  final SupabaseService supabase;
  const MyApp({super.key, required this.isar, required this.supabase});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<IsarService>.value(value: isar),
        Provider<SupabaseService>.value(value: supabase),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Decor Offline',
        theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal)),
        home: const LoginPage(),
      ),
    );
  }
}
