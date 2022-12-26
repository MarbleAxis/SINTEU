const database = require('../database');
const { codificarSenha } = require('../utils/seguranca');


class UsuarioService {

    cadastrarEstudantes(login, senha, nome, email, telefone, areaformacao) {
        return database.transaction(async (tx) => {

            // Salva os dados gerais de usuário
            let usuario = { login: login, senha: codificarSenha(senha), tipo: 'estudantes'};
            let ids = await tx('usuarios').insert(usuario, 'id');
            usuario.id = ids[0];
            
            // Salva dos dados específicos do estudante
            let estudantes = { id: usuario.id, nome, email, telefone, areaformacao}
            await tx('estudantes').insert(estudantes);
            return estudantes;

        });
    }

    async cadastrarEmpresa(login, senha, cnpj, nome, email, telefone, endereco) {
        return await database.transaction(async (tx) => {

            // Salva os dados gerais de usuário
            let usuario = { login: login, senha: codificarSenha(senha), tipo: 'empresas'};
            let ids = await tx('usuarios').insert(usuario, 'id');
            usuario.id = ids[0];
            
            // Salva dos dados específicos da empresa
            let empresas = { id: usuario.id, cnpj, nome, email, telefone, endereco}
            await tx('empresas').insert(empresas);
            return empresas;
        });
    }

    cadastrarOrientador(login, senha, nome, email, telefone, ocupacao) {
        return database.transaction(async (tx) => {

            // Salva os dados gerais de usuário
            let usuario = { login: login, senha: codificarSenha(senha), tipo: 'orientador'};
            let ids = await tx('orientador').insert(usuario, 'id');
            usuario.id = ids[0];
            
            // Salva dos dados específicos do orientador
            let orientador = { id: usuario.id, nome, email, telefone, ocupacao}
            await tx('orientador').insert(orientador);
            return orientador;

        });
    }

}


module.exports = new UsuarioService();
