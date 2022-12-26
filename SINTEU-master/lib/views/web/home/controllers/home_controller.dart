
import 'package:flutter/cupertino.dart';
import 'package:sinteu/views/web/cadastro/repository/usuario_repository.dart';

import '../../cadastro/models/usuario_model.dart';

class HomeController extends ChangeNotifier{
  final _usuarioRepository = UsuarioRepository();

  // Lista
  ValueNotifier<List<UsuarioModel>> 
        usuarioDataSourceNotifier = 
          ValueNotifier([]);

  //Get e Set
  List<UsuarioModel> get usuarioDataSource => 
    usuarioDataSourceNotifier.value;
  set usuarioDataSource (value) =>
    usuarioDataSourceNotifier.value = value;
  
  void carregaDados(){
      _usuarioRepository.selecionarTodos()
        .then((value) => usuarioDataSource = value);
    }
  
  void excluirOnPressed(UsuarioModel usuario, 
  VoidCallback sucesso, VoidCallback erro) async{
      try {
        _usuarioRepository.excluir(usuario);
        sucesso();
      } catch (e) {
        erro();
      }
    }
}