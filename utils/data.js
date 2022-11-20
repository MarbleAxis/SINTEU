
function formatarData(data) {
    return data.toLocaleDateString('pt-br');
}

function formatarHoras(str) {
    let valores = str.split(':');
    return `${valores[0]}:${valores[1]}`;
}


module.exports = {
    formatarData,
    formatarHoras
};
