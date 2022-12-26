const database = require('../database');


class EmpresaService {

    async atualizarEmpresa(empresa_id, cnpj, nome, email, telefone, endereco) {
        return await database.transaction(async (tx) => {
            let empresas = await tx('empresas')
                    .where('id', empresa_id)
                    .update({
                        cnpj, nome, email, telefone, endereco
                    }, ['id', 'cnpj', 'nome', 'email', 'telefone', 'endereco']);

            return empresas;
        });
    }

    async buscarEmpresas() {
        return database
                .select('id', 'cnpj', 'nome', 'email', 'telefone', 'endereco')
                .from('empresas')
                .orderBy([{column: 'nome', order: 'asc'}]);
    }

    async cadastrarProjeto(empresas_id, descricao, ativo = true) {
        return database.transaction(async (tx) => {
            let projetos = {empresas_id, descricao, ativo}
            let ids = await tx('projetos').insert(projetos, 'id');
            projetos.id = ids[0];
            return projetos;
        });
    }

    async buscarProjetos(empresas_id) {
        return database
                .select('id_projetos', 'descricao', 'ativo')
                .from('projetos')
                .where('empresas_id', empresas_id)
                .orderBy([ {column: 'descricao', order: 'asc'} ]);
    }

    async buscarProjetosAtivos(empresas_id) {
        return database
                .select('id_projetos', 'descricao', 'ativo')
                .from('projetos')
                .where('empresas_id', empresas_id)
                .andWhere('ativo', true)
                .orderBy([ {column: 'descricao', order: 'asc'} ]);
    }

    async atualizarProjetos(id_projetos, descricao, ativo) {
        return database('projetos')
                .where('id', id_projetos)
                .update({ 
                    descricao, ativo
                }, ['id', 'descricao', 'ativo']);
    }

    async ativarProjeto(id_projetos) {
        return database('projetos')
                .where('id', id_projetos)
                .update({ ativo: true }, ['id', 'descricao', 'ativo']);
    }

    async desativarServico(id_projetos) {
        return database('projetos')
                .where('id', id_projetos)
                .update({ ativo: false }, ['id', 'descricao', 'ativo']);
    }

    async getServicos(empresas_id) {
        let dados = await database.select({
            id: 'id_iniciar_projeto.id',
            estudantes_id: 'estudantes.id_estudantes',
            estudantes_nome: 'estudantes.nome',
            estudantes_email: 'estudantes.email',
            estudantes_telefone: 'estudantes.telefone',
            estudantes_areaformacao: 'estudantes.areaformacao',
            empresas_id: 'empresas.id_empresas',
            empresas_cnpj: 'empresas.cnpj',
            empresas_nome: 'empresas.nome',
            empresas_email: 'empresas.email',
            empresas_telefone: 'empresas.telefone',
            empresas_endereco: 'empresas.endereco',
            orientador_id: 'orientador.id_orientador',
            orientador_nome: 'orientador.nome',
            projetos_id: 'projetos.id_projetos',
            projetos_descricao: 'projetos.descricao'
        })
        .from('iniciar_projeto')
        .join('estudantes', 'estudantes.id', 'iniciar_projeto.id_estudantes')
        .join('orientador', 'orientador.id', 'iniciar_projeto.id_orientador')
        .join('projetos', 'projetos.id', 'iniciar_projeto.id_projetos')
        .join('empresas', 'empresas.id', 'funcionarios.id_empresas')
        .where('empresas.id', empresas_id);

        return dados.map((iniciar_projeto) => {
            return {
                id: iniciar_projeto.id,
                estudantes: {
                    id: iniciar_projeto.estudantes_id,
                    nome: iniciar_projeto.estudantes_nome,
                    telefone: iniciar_projeto.estudantes_telefone,
                    email: iniciar_projeto.estudantes_email,
                    areaformacao: iniciar_projeto.estudantes_area
                },
                empresas: {
                    id: iniciar_projeto.empresas_id,
                    cnpj: iniciar_projeto.empresas_cnpj,
                    nome: iniciar_projeto.empresa_nome,
                    telefone: iniciar_projeto.empresa_telefone,
                    email: iniciar_projeto.empresa_email,
                    endereco: iniciar_projeto.empresa_endereco
                },
                orientador: {
                    id: iniciar_projeto.orientador_id,
                    nome: iniciar_projeto.orientador_nome
                },
                projetos: {
                    id: iniciar_projeto.projetos_id,
                    descricao: iniciar_projeto.projetos_descricao
                }
            };
        });
    }

}


module.exports = new EmpresaService();
