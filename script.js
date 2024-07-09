//para acessar e salvar um elemento
const mensagem = document.getElementById("mensagem"); 

console.log(mensagem);

//para acessar e salvar mais de um elemento
const perfil = document.getElementsByClassName("dados"); 

//console.log(perfil);
console.log(perfil[0]);

//selecionando elementos
const segundoTitulo = document.querySelector("div h2"); 

console.log(segundoTitulo);



const textosPorClasse = document.querySelectorAll(".texto-simples"); 

console.log(textosPorClasse);
