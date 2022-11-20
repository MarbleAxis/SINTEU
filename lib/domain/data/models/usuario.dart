import 'dart:convert';

class UsuarioModel{
  int? id;
  String? nome;
  String? email;
  String? senha;

  UsuarioModel({
    this.id,
    this.email,
    this.nome,
    this.senha
  });

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
    };
  }

  factory UsuarioModel.fromap(Map<String, dynamic> map){
    return UsuarioModel(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
    );
  }
  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) => UsuarioModel.fromap(json.decode(source));

}