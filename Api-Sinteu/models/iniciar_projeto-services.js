// const database = require('../database');


// class Iniciar_projetoService {

//     async buscarDisponibilidade(orientador_id, projetos_id, estudantes_id) {

//         let orientador = (await database
//                 .select('*')
//                 .from('orientador')
//                 .where('id', orientador_id))[0];

//         let projetos = (await database
//                 .select('*')
//                 .from('projetos')
//                 .where('id', projetos_id))[0];
                
//         let estudantes = (await database
//             .select('*')
//             .from('estudantes')
//             .where('id', estudantes_id))[0];

//         let iniciar_projeto = await database
//                 .select({projetos: 'iniciar_projeto.projeto_id', estudantes: 'iniciar_projeto.id_estudantes', orientador: 'iniciar_projeto.orientador_id'})
//                 .from('iniciar_projeto')
//                 .join('projetos', 'projetos_id', 'iniciar_projeto.projetos_id')
//                 .where('iniciar_projeto.orientador_id', orientador_id)
//                 .andWhere('iniciar_projeto.estudantes', estudantes_id);
//     }

//     async iniciar_projeto(orientador_id, projetos_id, estudantes_id) {
//         return await database.transaction(async (tx) => {

//             let iniciar_projeto = await tx('iniciar_projeto')
//                     .insert({orientador_id, projetos_id, estudantes_id}, 
//                         ['id', 'orientador_id', 'projetos_id', 'estudantes_id']);

//             return iniciar_projeto;
//         });
//     }

//     async cancelar(iniciar_projeto_id) {
//         await database('iniciar_projeto')
//                 .where('id', iniciar_projeto_id)
//                 .del();
//     }

// }


// module.exports = new Iniciar_projetoService();
