const config = require('config');


/**
 * Configura o Knex para fornecer conexões ao banco de dados
 * da aplicação. Os dados usados para configuração de acesso 
 * ao SGBD estão definidos no arquivo /config/default.json.
 */
const database = require('knex')({
    client: config.get('database.client'),
    connection: {
        host: config.get('database.host'),
        port: config.get('database.port'),
        user: config.get('database.user'),
        password: config.get('database.password'),
        database: config.get('database.schema')
    },
    pool: {
        min: config.get('database.pool.min'),
        max: config.get('database.pool.max')
    }
});


// Testa a conexão com o SGBD
database.raw('SELECT 1')
.then(() => {
    console.log('Conexão ao SGBD realizada com sucesso!');
})
.catch((e) => {
    console.error('Não foi possível conectar ao SGBD.');
    throw e;
});


// Exporta o objeto para acesso ao banco de dados
module.exports = database;
