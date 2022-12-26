import '../models/usuario_model.dart';
import 'datasources/data_source.dart';
import 'datasources/memoria_datasource.dart';

class UsuarioRepository{
  final DataSourceBase? _db = MemoriaDataSource();

  Future<void> incluir(UsuarioModel usuario) async{ 
    usuario.isValid();
    await _db!.incluir(usuario.toMap());
  }
  Future<void> excluir(UsuarioModel usuario) async{
    await _db!.excluir(usuario.toMap());
  }
  Future<void> alterar(UsuarioModel usuario) async{
    usuario.isValid();
    await _db!.alterar(usuario.toMap());
  }
  Future<UsuarioModel?> selecionar(String email) async{
    final map = await _db!.selecionar(email); 
    if (map == null){
      return null;
    }
    return UsuarioModel.fromMap(map);
  }
  Future<List<UsuarioModel>> selecionarTodos() async{
    final maps = await _db!.selecionarTodos();
    var retorno = <UsuarioModel>[];
    for (var map in maps) {
      final usuario = UsuarioModel.fromMap(map);
      retorno.add(usuario);
    }
     return retorno;
  }
}