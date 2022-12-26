const database = require('../database');


class ClienteService {

    async getAgendamentos(clientes_id) {
        let dados = await database.select({
            id: 'id_iniciar_projeto.id',
            estudantes_id: 'estudantes.id_estudantes',
            estudantes_nome: 'estudantes.nome',
            estudantes_email: 'estudantes.email',
            estudantes_telefone: 'estudantes.telefone',
            estudantes_areaformacao: 'estudantes.areaformacao',
            empresa_id: 'empresas.id_empresas',
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
        .where('iniciar_projeto.id_estudantes', clientes_id);

        return dados.map((agendamento) => {
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


module.exports = new ClienteService();
