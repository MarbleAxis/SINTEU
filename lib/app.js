const path = require('path');
const express = require('express');
const session = require('express-session');
const methodOverride = require('method-override');
const createError = require('http-errors');
const nunjucks = require('nunjucks');
const passport = require('passport');
const cors = require('cors');
const routes = require('../routes');

// Cria uma instânia do Express
const app = express();

// Habilita o uso de métodos HTTP (como DELETE e PUT) em navegadores que não o suportam
app.use(methodOverride('X-HTTP-Method'));
app.use(methodOverride('X-HTTP-Method-Override'));
app.use(methodOverride('X-Method-Override'));
app.use(methodOverride('_method'));

// Configura o Nunjucks (template engine) para renderizar as páginas
app.set('view engine', 'dart');
app.set('views', path.join(__dirname, 'views'));
nunjucks.configure('views', {
    autoescape: true,
    express: app,
    tags: ''
});

// Habilita a obtenção dos dados enviados pelas requisições
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Habilita o suporte a sessões
app.use(session({
    secret: "sigec-tcc",
    resave: false,
    saveUninitialized: false,
    cookie: { secure: false }
}));

app.use(passport.session());

// Habilita CORS (Cross-Origin Resource Sharing)
app.use(cors());

// Configura as rotas da aplicação
app.use(routes);

// Captura erros 404 e o encaminha adiante
app.use((req, res, next) => {
    next(createError(404));
});

// Captura erros e exibe uma página com informações
app.use((erro, req, res, next) => {
    let msg = "Não encontramos nada por aqui.";
    if (erro.status !== 404) {
        msg = "Aconteceu algo que não estávamos esperando.";
        console.error(erro.stack);
    }
    res.status(erro.status || 500);
    res.render('erro', { 
        codigo: erro.status || 500,
        mensagem: msg
     });
});

// Exporta a aplicação
module.exports = app;
