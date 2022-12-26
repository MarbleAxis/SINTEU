import 'dart:convert';

class UsuarioModel {
  //Atributos
  String? nome;
  String? email;
  String? senha;
  String? csenha;
  String? telefone;

  //Construtor
  UsuarioModel({
    this.nome,
    this.email,
    this.senha,
    this.csenha,
    this.telefone,
  });


  UsuarioModel copyWith({
    String? nome,
    String? email,
    String? senha,
    String? csenha,
    String? telfone,
  }) {
    return UsuarioModel(
      nome: nome ?? this.nome,
      email: email ?? this.email,
      senha: senha ?? this.senha,
      csenha: senha ?? this.csenha,
      telefone: telefone ?? this.telefone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': email,
      'senha': senha,
      'csenha': csenha,
      'telefone': telefone,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
      csenha: map['csenha'],
      telefone: map['telefone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) => UsuarioModel.fromMap(json.decode(source));

  @override
  String toString() => 'UsuarioModel(nome: $nome, email: $email, senha: $senha, csenha: $csenha, telefone: $telefone)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UsuarioModel &&
      other.nome == nome &&
      other.email == email &&
      other.senha == senha && 
      other.csenha == senha && 
      other.telefone == telefone;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ senha.hashCode;

  bool isValid(){
    if (nome == null || nome!.isEmpty) {
      throw Exception('Nome não informado');
    }
    if (senha == null || senha!.isEmpty) {
      throw Exception('Senha não informado');
    }
    if (csenha == null || csenha!.isEmpty) {
      throw Exception('Confirme a Senha');
    }
    if (email == null || email!.isEmpty) {
      throw Exception('Email não informado');
    }
    if (telefone == null || telefone!.isEmpty) {
      throw Exception('Telefone não informado');
    }
    return true;
  }
} 
