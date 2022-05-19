import 'package:flutter/material.dart';
import 'package:lista_tarefas/database.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: CircleAvatar(
                    child: Text("G"),
                  ),
                  onTap: () async => await Database().singIn(),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Usuário"),
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Senha"),
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Entrar",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
