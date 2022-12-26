const crypto = require('crypto');
const connectEnsureLogin = require('connect-ensure-login');


/**
 * Transforma a senha através de uma função de Hash para evitar que ela 
 * seja exposta de forma desprotegida na aplicação.
 */
function codificarSenha(password) {
    return crypto.createHash('sha256').update(password).digest('hex');
}


/**
 * Middlewares para garantir que as requisições às rotas sejam 
 * realizadas a partir de sessões autenticadas.
 */
 const sessaoAutenticada = connectEnsureLogin.ensureLoggedIn('/login');


/**
 * Middlewares para garantir que as requisições às rotas sejam 
 * realizadas a partir de sessões não autenticadas.
 */
const sessaoNaoAutenticada = connectEnsureLogin.ensureLoggedOut('/');


// Exporta funções e objetos auxiliares para manutenção da segurança
// da aplicação.
module.exports = {
    codificarSenha,
    sessaoAutenticada,
    sessaoNaoAutenticada
};
