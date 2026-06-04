/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando os comandos do meu jogo CLT runner
//Por padrão nossa variavel temporaria SPACE vai guardar o comando do espaço
var space = keyboard_check_pressed(vk_space)

//Criando o sistema de gravidade do nosso jogo
//nosso vel_v por padrão não possui nenhum tipo de valor ou seja zero
//Porém ele vai receber o valor da grav ou seja vel_v += a minha grav que equivale a 0.5
vel_v += grav
//Criando meu if para ver se estou pulando ou não
if(space && place_meeting(x, y + 1, o_chao))
{
    
    sprite_index = s_player_jump
    //Ao apertar espaço ou space esse meu vel_v que equilave a 0.5 vai ser igual
    //ao -pulo que se refere a altura que irei pular no negativo indo assim para cima
    vel_v = -pulo
    //Debugando para ver se funcionou
    show_debug_message("Apertei espaço")
    //Para evitar que estou pulando de forma infinita iremos usar um place_meeting
    //que consiste em verificar se estou batendo em algum objeto abaixo de mim
    
}
//Apos eu sair do evento de espaço o meu vel_v vai agir com base 
//na variavel gravidade e vai puxar o eixo Y da room fazendo eu cair
y += vel_v
//Criando um novo if para verificar se pisei no chão e mudar a minha animação para sprite de corrida
//Caso eu esteja pisando no chão e a sprite atual seja s_player_jump
if(place_meeting(x, y + 1, o_chao) && sprite_index = s_player_jump)
{
    //Então devo mudar para sprite de corrida s_player_run
    sprite_index = s_player_run
}

