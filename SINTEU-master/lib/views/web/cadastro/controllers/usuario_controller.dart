import 'package:flutter/material.dart';
import 'package:sinteu/views/web/cadastro/repository/usuario_repository.dart';

import '../models/usuario_model.dart';

class UsuarioController extends ChangeNotifier{
  final _repository = UsuarioRepository();

  final nome = TextEditingController();
  final email = TextEditingController();
  final senha = TextEditingController();
  final csenha = TextEditingController();
  final telefone = TextEditingController();

  Future<void> salvarOnPressed({
    required VoidCallback onSuccess, 
    required VoidCallback? Function(String erro) onFailure,
    bool alteracao = false }) async{
    try {
      final usuario = UsuarioModel(
        email: email.text,
        nome: nome.text,
        telefone: telefone.text,
        senha: senha.text,
        csenha: csenha.text
      );
      //Chamar o repositório
      if (alteracao == false) {
        await _repository.incluir(usuario);
      } else {
        await _repository.alterar(usuario);
      }
      onSuccess();
    } catch (e) {
      onFailure(e.toString());
    }
    
  }
}