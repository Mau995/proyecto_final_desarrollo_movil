import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/isar_service.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  String? _error;

  Future<void> _login() async {
    final svc = Provider.of<IsarService>(context, listen: false);
    final ok = await svc.login(_userCtrl.text.trim(), _passCtrl.text.trim());
    if (ok) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
    } else {
      setState(() { _error = 'Credenciales inválidas'; });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Card(
      child: Container(padding: const EdgeInsets.all(16), width: 360,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text('Decor Offline', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          TextField(controller: _userCtrl, decoration: const InputDecoration(labelText: 'Usuario')),
          TextField(controller: _passCtrl, obscureText: true, decoration: const InputDecoration(labelText: 'Contraseña')),
          if (_error != null) Text(_error!, style: const TextStyle(color: Colors.red)),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: _login, child: const Text('Ingresar')),
        ]),
      ),
    )));
  }
}
