const path = require('path');
const express = require('express');
const session = require('express-session');
const methodOverride = require('method-override');
const passport = require('passport');

// Cria uma instânia do Express
const app = express();

// Habilita o uso de métodos HTTP (como DELETE e PUT) em navegadores que não o suportam
app.use(methodOverride('X-HTTP-Method'));
app.use(methodOverride('X-HTTP-Method-Override'));
app.use(methodOverride('X-Method-Override'));
app.use(methodOverride('_method'));


// Habilita a obtenção dos dados enviados pelas requisições
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Habilita o suporte a sessões
app.use(session({
    secret: "sinteu",
    resave: false,
    saveUninitialized: false,
    cookie: { secure: false }
}));


// Exporta a aplicação
module.exports = app;
