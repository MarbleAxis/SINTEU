
import '../../models/usuario_model.dart';
import 'data_source.dart';

class MemoriaDataSource extends DataSourceBase{
  static List<Map<String, dynamic>> tabelaUsuario = [];

  static void  init(){
    for (var i = 0; i < 100; i++) {
      var usu = UsuarioModel(
        email: 'email$i@gmail.com',
        nome: 'Fulano 00$i',
        senha: 's$i',
        telefone: 'telefone$i'
      );
      tabelaUsuario.add(usu.toMap());
    }
  }
  
  @override
  Future<void> alterar(Map<String, dynamic> usuario)async {
    for (var i = 0; i < tabelaUsuario.length; i++) {
      if (tabelaUsuario[i]['email'] == usuario['email']) {
        tabelaUsuario[i]['nome'] = usuario['nome'];
        tabelaUsuario[i]['senha'] = usuario['senha'];
        tabelaUsuario[i]['telefone'] = usuario['telefone'];
        break;
      }
    }
  }

  @override
  Future<void> excluir(Map<String, dynamic> usuario) async {
    tabelaUsuario.removeWhere(
      (element) => element['email'] == usuario['email']);
    
  }

  @override
  Future<void> incluir(Map<String, dynamic> usuario) async {
    tabelaUsuario.add(usuario);
  }

  @override
  Future<Map<String, dynamic>?> selecionar(String email) async {
    for (var usuario in tabelaUsuario) {
      if (usuario['email'] == email) {
        return usuario;
      }
    }
    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> selecionarTodos() async{
    return tabelaUsuario;
  }

}