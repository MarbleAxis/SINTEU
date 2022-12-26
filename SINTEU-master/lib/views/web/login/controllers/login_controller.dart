import 'package:flutter/cupertino.dart';
import '../../cadastro/models/usuario_model.dart';
import '../../cadastro/repository/usuario_repository.dart';


class LoginController extends ChangeNotifier{
  final _repository = UsuarioRepository();
  final email = TextEditingController();
  final senha = TextEditingController();
  bool logado = false;

  Future<void> entrarOnPressed(
      {required VoidCallback? sucesso(UsuarioModel usuario),
      required VoidCallback? falha(String motivo)}) async {
    
    if (email.text.trim() == '') {
      falha('E-mail não informado');
      return;
    }

    var usuario = await _repository.selecionar(email.text);

    if (usuario == null){
      falha('E-mail inválido!');
      return;
    }
    if (usuario.senha == senha.text) {
      sucesso(usuario);
      logado = true;
    } else {
      falha('Usuário e/ou senha inválidos!');
      logado = false;
    }
  }
}