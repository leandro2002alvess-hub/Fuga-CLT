/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando variaveis do nosso personagem CLT
//Criando uma variavel vertical, por padrão minha velocidade vertical será ZERO
vel_v = 0
//Criando uma variavel de gravidade para nosso jogo
//Por padrão ela será 0.5
grav = 0.5
//Criando uma variavel para ser a nossa força do pulo
pulo = 9

//Criando uma variavel para se estou vivo
vivo = true

//Criando uma variavel de tempo para reiniciar a room apos a morte
tempo_morte = 0
//Criando um limite de tempo para minha morte
tempo_morte_limite = 60

//Criando um sistema para mover meu Background
//O layer_get_id irá pegar o nome do ID que tenho guardado na minha layer
layer_id = layer_get_id("Background")
layer_hspeed(layer_id, -4);