import 'package:flutter/material.dart';
import 'package:sinteu/views/web/cadastro/models/usuario_model.dart';
import 'package:sinteu/views/web/pagina_inicial/index.dart';

class AppWeb extends StatelessWidget {
  final usuarioLogado = UsuarioModel();
  
  get usuario => usuarioLogado;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SINTEU',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(usuario: usuario),
      //   'Orientador_page':(context) => const Orientador(),
      // },
      home: const PaginaInicial(),
    );
  }
}
